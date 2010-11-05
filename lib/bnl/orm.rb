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

    def name
      elements[3].to_s
    end

    def execute
      object = noun.find
      method = verb.to_sym

      if [:create].include? method
        if object.nil?
          arguments = {
            :name       => noun,
            :created_at => temporal.value
          }
          object = article.to_object
          object.send method, arguments
        else
          object.send method, temporal.value
        end
      else
        if object.nil?
        else
          object.send method, temporal.value
        end
      end
    end
  end

  module Klass
    def to_s
      text_value.strip
    end

    def to_object 
      article, type = to_s.split ' '
      case article
      when 'a', 'an'
        return constantize! type.capitalize
      when 'the'
      end
    end

    def constantize! type
      found = Object.constants.find {|con| con == type }
      return Object.const_get(found) unless found.nil?
      found
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

