require 'spec_helper'
require 'fixtures'

module Bnl
  describe "DslParser" do
    before :each do 
      @parser = Bnl::DslParser.new
    end

    describe 'handles verbs as expected' do
      good_verbs = %w(begin start restart cease end create)
      good_verbs | good_verbs.collect(&:capitalize)
      bad_verbs = %w(eat Eat)

      def phrase verb
        "#{verb} Lunch/Break at 12:00."
      end

      good_verbs.each do |verb|
        it "parses sentences with expected verb '#{verb}'" do
          parsed = @parser.parse(phrase(verb))
          parsed.should_not be_nil
        end
      end

      bad_verbs.each do |verb|
        it "does not parse sentences with unexpected verb '#{verb}'" do
          @parser.parse(phrase(verb)).should be_nil
        end
      end
    end

    describe 'parsing' do

      def fragments of
        fragments = @parser.parse(of).fragments
        return yield @parser.parse(of).fragments if block_given?
        fragments
      end

      def strings 
        proc {|frags| frags.collect(&:to_s)}
      end

      it "separates the fragments into what we'd expect" do
        fragments('Begin Lunch/Break at 12:00.', &strings).should eql(['Begin Lunch/Break at 12:00'])
        fragments('Start Lunch/Break at 12:00 pm and end Lunch/Break at 1:00 am.', &strings).should eql(['Start Lunch/Break at 12:00 pm', 'end Lunch/Break at 1:00 am'])
        fragments('End Lunch/Break at 1:00 am, Start Something at 1:00 pm, and end something at 1:00 pm.', &strings).should eql(['End Lunch/Break at 1:00 am', 'Start Something at 1:00 pm', 'end something at 1:00 pm'])
      end

      it ", parses definite articles" do
        fragments('Begin the project Lunch/Break at 12:00.', &strings).should eql(['Begin the project Lunch/Break at 12:00'])
      end

      it ", parses indefinite articles" do
        fragments = fragments('Create a project Something on 5/5.')
        fragments.collect(&:to_s).should eql(['Create a project Something on 5/5'])
        fragments.first.article.to_s.should eql('a project')

        fragments = fragments('Create an object SomethingElse on 5/5.')
        fragments.collect(&:to_s).should eql(['Create an object SomethingElse on 5/5'])
        fragments.first.article.to_s.should eql('an object')
      end

      it ", parses indefinite articles with a 'new' adjective" do
        fragments('Create a new project Something on 5/5.', &strings).should eql(['Create a new project Something on 5/5'])
      end

      it "shouldn't parse the 'or' conjunction" do
        sentence = 'begin Lunch/Break at 12:00 or end Lunch/Break at 1:00.'
        @parser.parse(sentence).should be_nil
      end

      it "exposes expected attribute/method(s) on a simple sentence" do
        fragment = @parser.parse('Cease Lunch/Break at 13:00.').fragments.first

        fragment.should respond_to(:execute)
        fragment.to_s.should eql('Cease Lunch/Break at 13:00')
        fragment.verb.to_s.should eql('cease')
        fragment.article.to_s.should eql('')
        fragment.noun.to_s.should eql('Lunch/Break')
        fragment.noun.orm_constants.should eql(['Project', 'Whence'])
        fragment.temporal.value.should eql(Chronic.parse('13:00'))
      end

      it "exposes expected attribute/method(s) on a complex sentence" do
        fragments = fragments('End Lunch/Break at 1:00 am, Start Something at 1:01 pm, and end something at 1:02 pm.')

        fragments.size.should eql(3)

        fragments[0].to_s.should eql('End Lunch/Break at 1:00 am')
        fragments[0].verb.to_s.should eql('end')
        fragments[0].noun.to_s.should eql('Lunch/Break')
        fragments[0].temporal.to_s.should eql('1:00 am')
        fragments[0].temporal.value.should eql(Chronic.parse('1:00 am'))

        fragments[1].to_s.should eql('Start Something at 1:01 pm')
        fragments[1].verb.to_s.should eql('start')
        fragments[1].noun.to_s.should eql('Something')
        fragments[1].temporal.to_s.should eql('1:01 pm')
        fragments[1].temporal.value.should eql(Chronic.parse('1:01 pm'))

        fragments[2].to_s.should eql('end something at 1:02 pm')
        fragments[2].verb.to_s.should eql('end')
        fragments[2].noun.to_s.should eql('something')
        fragments[2].temporal.to_s.should eql('1:02 pm')
        fragments[2].temporal.value.should eql(Chronic.parse('1:02 pm'))
      end
    end
  end
end
