require 'rubygems'
require 'chronic'
require 'dm-core'
require 'dm-aggregates'

DataMapper.setup :default, "sqlite3:db/pratt_dsl_example.sqlite3"

class Project
  include DataMapper::Resource

  property :id, Serial
  property :name, String, :required => true
  property :created_at, DateTime, :default => DateTime.now

  has n, :whences

  def self.named name
    first :name => name
  end

  def start when_to
    whences.new :start_at => when_to
    save
  end

  def has_start?
    true
  end

  def self.last_unended
    unended_whences = Whence.last_unended
    return nil if unended_whences.empty?
    unended_whences.last.project
  end

  def self.last_unended
    Whence.last_unended do |w|
      return nil if w.empty? 
      w.project
    end
  end

end

class Whence
  include DataMapper::Resource

  property :id,       Serial
  property :start_at, DateTime
  property :end_at,   DateTime
  property :invoiced, Boolean, :default => false

  belongs_to :project

  def self.unended
    all :end_at => nil
  end

  def self.last_unended
    last :end_at => nil
  end
end

#DataMapper.auto_migrate!

Project.create :name => 'Lunch/Break'
Project.create :name => 'Research'

Whence.create :project => Project.named("Research"), :start_at => Chronic.parse("yesterday 1:00 pm")
Whence.create :project => Project.named("Lunch/Break"), :start_at => Chronic.parse("12:00 am"), :end_at => Chronic.parse("1:00 pm")
Whence.create :project => Project.named("Research"), :start_at => Chronic.parse("1:00 pm")
