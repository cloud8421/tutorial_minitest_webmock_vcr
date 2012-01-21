#we need the actual library file
require_relative '../lib/dish'

#dependencies
require 'minitest/autorun'
require 'webmock/minitest'
require 'vcr'

#VCR config
VCR.config do |c|
  c.cassette_library_dir = 'spec/fixtures/dish_cassettes'
  c.stub_with :webmock
end
