require 'sinatra'
require 'sinatra/reloader'
require './lib/word'
require './lib/definition'
require 'pry'
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/word_list/new') do
  erb(:new_word)
end

get('/word_list') do
  @word_list = Word.all()
  erb(:word_list)
end

post('/word_list') do
  @word = params.fetch('word')
  @new_word = Word.new({:term => @word})
  @new_word.add
  @word_list = Word.all()
  erb(:success_word)
end

get('/word_list/:id') do
  @word = Word.find(params.fetch('id').to_i())
  @word_list = Word.all
  @definition = Definition.find(params.fetch('id').to_i())
  erb(:word)
end

post('/success_definition') do
  # @definition = params.fetch('definition')
  # @new_definition = Definition.new({:define => definition})
  # @word.add_definition(definition)
  # @word = Word.find(params.fetch('word_id').to_i())
  # @word.add_definition(definition)
  # erb(:success_definition)
end


get('/word_list/:id/definition/new') do
  @word = Word.find(params.fetch('id').to_i())
  @new_word = Word.new({:term => @word})
  erb(:new_definition)
end
