::API_KEY     = 'pi'
::API_SECRET  = 'pinatra'

module Sinatra

  module Authorization    
   
    def protected!
      return if authorized?
      headers['WWW-Authenticate'] = 'Basic realm="RasperryPi Restricted Area"'
      halt 401, "Not authorized\n"
    end

    def authorized?
      @auth ||=  Rack::Auth::Basic::Request.new(request.env)
      @auth.provided? and @auth.basic? and @auth.credentials and @auth.credentials == ['admin', 'admin']
    end

  end

  register Authorization

end