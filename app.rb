require('pry')
require('sinatra')
require('sinatra/reloader')
require('./lib/rps')
also_reload('lib/**/*.rb')

get('/') do
  #the index is selected for loading
  erb(:index)
  #the index page is loaded with the form on it
  #eventually the submit button sends the form to page winner
end

get('/winner') do
  #the form from index is now on this page, with it's fields filled
  @player1 = params.fetch('player1')
  @player2 = params.fetch('player2')
  #the submitted parameters in the form are pulled and placed in their respective variables
  @winner = @player2.beat(@player1)
  #the method is run on te variables, to select a winner
  erb(:winner)
  #page winner is displayed, with @winner variable filled
end
