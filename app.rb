require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

enable :sessions

get '/' do
  erb :index
end

post '/names' do
  p params
  # erb :index
  session[:Player_1] = params[:Player_1]
  session[:Player_2] = params[:Player_2]
  redirect '/play'
  # "#{@player_1} #{@player_2}"
end

get '/play' do
  @player_1 = session[:Player_1]
  @player_2 = session[:Player_2]
  erb :play
end

post '/attack' do
  @player_2 = session[:Player_2]
  erb :attack
end

  # to start server when ruby app.rb is called
  run! if app_file == $0
end