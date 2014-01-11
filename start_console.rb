IRB.conf[:PROMPT_MODE] = :SIMPLE

require 'rubygems'
require 'bundler/setup'
require 'irb'

Bundler.require(:db, :amazon, :email, :hardware)

ActiveRecord::Base.establish_connection(YAML.load_file('config/database.yml')['development'])

# # Framework Classes
Dir["#{File.dirname(__FILE__)}/lib/*.rb"].each {|file| require file }
Dir["#{File.dirname(__FILE__)}/app/models/*.rb"].each {|file| require file }