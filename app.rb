require 'sinatra'

get '/' do
  'Hello.....'
end

get '/home' do
  'Fly me to the moon....'
end

get '/secret' do
  'I am not a Russian spy'
end

get '/cat' do
  erb(:cat)
end

get '/dog' do
  erb(:index)
end
