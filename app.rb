require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable: sessions
    set :session_secret, "secret"
  end
  
  get '/hey' do
    @session = session
  end
  
  get '/' do
    erb :index
  end
  
  post '/checkout' do
    
  end
  
end