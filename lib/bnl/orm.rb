require 'rubygems'
require 'bnl'
require 'chronic'

module Bnl::Dsl
  module ActionItem
    def to_s
      text_value
    end

    def execute
      object = noun.find
      object.send verb.to_sym, temporal.value
    end
  end

  module OrmMethods
    def to_sym
      to_s.to_sym
    end

    def to_s
      text_value.downcase
    end
  end

  class OrmModel < Treetop::Runtime::SyntaxNode
    def to_s
      text_value
    end

    def find
      Project.named text_value
    end
  end

  module TemporalValue #< Treetop::Runtime::SyntaxNode
    def to_s
      literal.text_value
    end

    def value
      Chronic.parse to_s
    end
  end
end
