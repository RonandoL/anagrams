require('sinatra')
require('sinatra/reloader')
require('./lib/anagrams')

get('/') do
  erb(:index)
end

get('/results') do  # user goes to this URL
  @words = params.fetch('words')
  @check_word = params.fetch('check_word')
  @is_anagram = @words.anagrams(@check_word)
  erb(:results_file)  # this is the filename
end
