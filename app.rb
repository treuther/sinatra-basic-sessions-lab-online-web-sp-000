require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/hey' do
    @session = session
  end
  
  get '/' do
    erb :index
  end
  
  post 'checkout' do
    
  end
  
end