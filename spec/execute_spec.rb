require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require 'fixtures'

module Bnl
  describe "executed parsed fragment" do
    before :each do 
      @parser = Bnl::DslParser.new
    end

    it "should emulate this behavior" do
      project = Project.named 'Lunch/Break'
      whence = Chronic.parse('13:00')

      project.whences.expects(:new).with(:start_at => whence)

      project.start whence
    end

    it "should find the model instance we're expecting" do
      parsed = @parser.parse('Start Lunch/Break at 13:00.')
      fragment = parsed.fragments.first

      fragment.noun.find.should eql(Project.first)
    end

    it "should operate on the domain models as expected" do
      parsed = @parser.parse('Start Lunch/Break at 13:00.')
      fragment = parsed.fragments.first

      lambda {
        fragment.execute 
      }.should change(Whence, :count).by(1)
    end
  end
end
