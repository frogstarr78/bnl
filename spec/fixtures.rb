require 'dm-core'
require 'dm-aggregates'

DataMapper.setup :default, "sqlite3:db/pratt_dsl_example.sqlite3"

class Project
  include DataMapper::Resource

  property :id, Serial
  property :name, String, :required => true

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
end

class Whence
  include DataMapper::Resource

  property :id,       Serial
  property :start_at, DateTime
  property :end_at,   DateTime
  property :invoiced, Boolean, :default => false

  belongs_to :project

  def self.last_unended
    last :end_at.eql => nil
  end
end

DataMapper.auto_migrate!

proj = Project.new
proj.attributes = { :name => 'Lunch/Break' }
proj.save

proj = Project.new
proj.attributes = { :name => 'Research' }
proj.save

