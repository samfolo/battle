require 'sinatra'

class Battle < Sinatra::Base
  get '/' do
    'Testing infrastructure working!'
  end

  get '/form' do
    erb :index
  end

  post '/names' do
    @name = params[:name]
    erb :play
  end

  run! if app_file == $0
end
