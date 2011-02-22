$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'rubygems'
require 'bnl'
require 'rspec'
require 'rspec/autorun'

RSpec.configure do |config|
  config.mock_with :mocha
end
