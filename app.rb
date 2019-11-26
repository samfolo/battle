require 'sinatra'

class Battle < Sinatra::Base
end

get '/' do
  'Hello Battle!'
end
