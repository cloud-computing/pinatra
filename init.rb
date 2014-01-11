require 'rubygems'
require 'bundler/setup'
require 'irb'
require 'sinatra/base'

Bundler.require(:web, :db, :email, :hardware)

# Framework Classes
Dir["#{File.dirname(__FILE__)}/initializers/*.rb"].each {|file| require file }
Dir["#{File.dirname(__FILE__)}/lib/*.rb"].each {|file| require file }
Dir["#{File.dirname(__FILE__)}/app/helpers/*.rb"].each {|file| require file }
Dir["#{File.dirname(__FILE__)}/app/controllers/*.rb"].each {|file| require file }
Dir["#{File.dirname(__FILE__)}/app/models/*.rb"].each {|file| require file }

class BookieApi < Sinatra::Base

  register Sinatra::MainController

end