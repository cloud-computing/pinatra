require 'rubygems'
require 'bundler/setup'
require 'irb'

Bundler.require(:db, :amazon, :import, :email)

Dir["#{File.dirname(__FILE__)}/lib/*.rb"].each {|file| require file }
Dir["#{File.dirname(__FILE__)}/app/models/*.rb"].each {|file| require file }
Dir.glob('lib/tasks/*.rake').each {|r| import r}