require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    
    erb :user_input
    
  end 
  
  post '/piglatinize' do 
    @pl = PigLatinizer.new
    @user_phrase = @pl.user_phrase_piglatinizer(params[:user_phrase])
    
    erb :piglatinize
    
  end 
end