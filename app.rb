require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end
  
    post '/' do
        @piglatinized = PigLatinizer.new.piglatinize(params[:user_text])
        erb :pig_latinizer
    end
    

end