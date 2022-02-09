require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player'

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
  $player_1 = Player.new(params[:Player_1])
  $player_2 = Player.new(params[:Player_2])
  redirect '/play'
  # "#{@player_1} #{@player_2}"
end

get '/play' do
  @player_1 = $player_1.name
  @player_2 = $player_2.name 
  erb :play
end

post '/attack' do
  @player_2 = $player_2.name
  erb :attack
end

  # to start server when ruby app.rb is called
  run! if app_file == $0
end