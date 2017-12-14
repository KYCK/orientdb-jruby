raise "OrientDB-client only runs on JRuby. Sorry!" unless (RUBY_PLATFORM =~ /java/)

module OrientDB
  GEM_PATH = File.expand_path('..', __FILE__) unless const_defined?(:GEM_PATH)
end

require 'java'

Dir.glob(File.join(OrientDB::GEM_PATH, 'jars', '*.jar')).each do |jar|
  require jar
end

require 'orientdb/version'
require 'orientdb/ext'
require 'orientdb/rid'
require 'orientdb/constants'
require 'orientdb/property'
require 'orientdb/schema'
require 'orientdb/database'
require 'orientdb/record'
require 'orientdb/graph'
require 'orientdb/document'
require 'orientdb/sql'
require 'orientdb/oclass'
