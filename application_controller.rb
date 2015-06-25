require 'bundler'
Bundler.require

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  get '/scenario' do
    erb :scenario
  end

end
