require 'sinatra/base'

module Sinatra

  module MainController

    def self.registered(base)

      require 'sinatra'

      base.helpers do
        include Sinatra::Authorization
      end

      base.get '/' do
        "Everybody can see this page"
      end

      base.get '/protected' do
        protected!
        "Welcome, authenticated client"
        User.all.map(&:full_name).join("<br/>")
      end

    end

  end

  register MainController

end