require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

module Bnl
  describe Dsl do
    it "encapsulates ActionItem" do
      subject.constants.should include("ActionItem")
    end

    it "encapsulates OrmMethods" do
      subject.constants.should include("OrmMethods")
    end

    it "encapsulates OrmMedel" do
      subject.constants.should include("OrmModel")
    end

    it "encapsulates TemporalValue"  do
      subject.constants.should include("TemporalValue")
    end
  end

  describe Dsl::ActionItem do
    it "defines execute" do
      subject.public_instance_methods(false).should include("execute")
    end

    it "defines to_s" do
      subject.public_instance_methods(false).should include("to_s")
    end
  end

  describe Dsl::OrmMethods do
    it "defines to_sym" do
      subject.public_instance_methods(false).should include("to_sym")
    end

    it "defines to_s" do
      subject.public_instance_methods(false).should include("to_s")
    end
  end

  describe Dsl::OrmModel do
    it "defines to_s" do
      Dsl::OrmModel.public_instance_methods(false).should include("to_s")
    end

    it "defines find" do
      Dsl::OrmModel.public_instance_methods(false).should include("find")
    end
  end

  describe Dsl::TemporalValue do
    it "defines to_s" do
      subject.public_instance_methods(false).should include("to_s")
    end

    it "defines value" do
      subject.public_instance_methods(false).should include("value")
    end
  end
end
