require 'spec_helper'
require 'fixtures'

module Bnl
  describe "executing a parsed fragment" do
    before :each do 
      @parser = Bnl::DslParser.new
    end

    it "emulates this behavior" do
      project = Project.named 'Lunch/Break'
      whence = Chronic.parse('13:00')

      project.whences.expects(:new).with(:start_at => whence)

      project.start whence
    end

    it "finds the model instance we're expecting" do
      parsed = @parser.parse('Start Lunch/Break at 13:00.')
      fragment = parsed.fragments.first

      fragment.noun.find.should eql(Project.first)
    end

    it "operates on the domain models as expected" do
      parsed = @parser.parse('Start Lunch/Break at 13:00.')
      fragment = parsed.fragments.first

      lambda {
        fragment.execute 
      }.should change(Whence, :count).by(1)
    end

    it "creates the correct model defined by the article and noun for ORM Model" do
      parsed = @parser.parse('Create a project Something on 5/5.')
      fragment = parsed.fragments.first
      fragment.article.to_object.should eql(Project)
      fragment.name.should eql 'Something'
      lambda {
        fragment.execute 
      }.should change(Project, :count).by(1)
    end

    it "creates the correct model defined by the article and noun for standard lib object" do
      parsed = @parser.parse('Create a Whence on 5/5.')
      fragment = parsed.fragments.first
      fragment.article.to_object.should eql(Object)
      fragment.name.should eql 'Something'
      lambda {
        fragment.execute 
      }.should change(Project, :count).by(1)
    end

    it "finds the correct model defined by the article and noun for ORM Model" do
      parsed = @parser.parse('End Research now.')
      fragment = parsed.fragments.first
      fragment.article.to_object.should eql(Object)
      fragment.name.should eql 'Research'
      lambda {
        fragment.execute 
      }.should_not change(Project.named("Research").whences, :count).by(1)
    end
  end
end
