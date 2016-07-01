require('sinatra')
require('sinatra/reloader')
require('./lib/word_count.rb')

get('/') do
  @page_title = "home"
  erb(:index)
end
get('/word_count') do
  @page_title = "word_count"
  @input_word = params.fetch('') #something in here
  @input_string = params.fetch('') #something in here


  erb(:word_count)
end
