require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

get '/' do
  # "Testing infrastructure working!"
  erb :index
end

post '/names' do
  p params
  # erb :index
  @player_1 = params[:Player_1]
  @player_2 = params[:Player_2]
  erb :play
  # "#{@player_1} #{@player_2}"
end



  # to start server when ruby app.rb is called
  run! if app_file == $0
end