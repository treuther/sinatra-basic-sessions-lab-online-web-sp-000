require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable: sessions
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end
  
  post '/checkout' do
    sesion["item"] = params[:item]
    @session = session
    
    "#{params[:item]}"
  end
  
end