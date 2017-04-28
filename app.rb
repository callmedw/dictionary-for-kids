require 'sinatra'
require 'sinatra/reloader'
require './lib/kids_dictionary'
require 'pry'

also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end
