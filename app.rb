require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

get '/' do
  "Testing infrastructure working!"
end

  # to start server when ruby app.rb is called
  run! if app_file == $0
end