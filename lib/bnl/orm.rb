require 'rubygems'
require 'bnl'
require 'chronic'

module Bnl::Dsl

  module ActionItem
    def to_s
      text_value
    end

    def article
      elements[2]
    end

    def execute
      object = noun.find
      object.send verb.to_sym, temporal.value
    end
  end

  module Klass
    def to_s
      text_value.strip
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

    def find method_suggestion = nil
#      orm_constants.each do |orm_class|
#      end
      Project.named text_value
    end

#    def article
#      elements[1].class
#    end

#    protected 
      def orm_constants
        cons = Object.constants

        cons.select do |con|
          module_literal_or_class = Object.const_get(con)
          module_literal_or_class.class == Class and module_literal_or_class.include?( DataMapper::Resource )
        end.sort
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

class Treetop::Runtime::SyntaxNode
    def to_s
      text_value
    end
end

