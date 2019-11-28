require 'sinatra'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base
enable :sessions

  $game = Game.new

  get '/' do
    erb :index
  end

  post '/names' do
    $game.add_players(Player.new(params[:player_1]), Player.new(params[:player_2]))
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/attack' do
    $game.attack($game.player_1)
    erb :attack
  end

  run! if app_file == $0
end
