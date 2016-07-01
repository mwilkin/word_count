require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  @page_title = "home"
  erb(:index)
end
get('/word_count') do
  @page_title = "word_count"
  @input_word = params.fetch('input_word') #NTS: is this necessary?
  @input_string = params.fetch('input_string')
  @result = @input_word.word_count(@input_string)
  erb(:word_count)
end
