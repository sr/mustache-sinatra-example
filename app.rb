require 'sinatra/base'
require 'mustache/sinatra'

class App < Sinatra::Base
  register Mustache::Sinatra

  set :views,     'templates/'
  set :mustaches, 'views/'

  get '/' do
    mustache :index
  end

  get '/other' do
    mustache :other
  end
end
