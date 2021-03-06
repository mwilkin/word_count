require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  @page_title = "home"
  erb(:index)
end
post('/word_count') do
  @page_title
  @input_word = params.fetch('word')
  @input_string = params.fetch('string')
  @result = @input_word.word_count(@input_string)
  erb(:word_count)
end
