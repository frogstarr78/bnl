require 'spec_helper'
require 'fixtures'

module Bnl
  describe "Dsl::Klass" do
    before :each do 
      @parser = Bnl::DslParser.new
    end

    it "cleans up value w/ extra characters"
    it "returns correct object with #to_object"
    it "constantize!s type"
  end
end
