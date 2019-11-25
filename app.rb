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

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:cat)
end

get '/named-cat' do
  p params
  @name = params[:name]
  @age = params[:age]
  erb(:cat)
end

get '/dog' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end
