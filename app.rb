require('pry')
require('sinatra')
require('sinatra/reloader')
require('./lib/rps')
also_reload('lib/**/*.rb')

get('/') do
  #binding.pry

  erb(:index)

  # binding.pry
end

get('/winner') do
  @player1 = params.fetch('player1')
  @player2 = params.fetch('player2')
  @winner = @player2.beat(@player1)
  erb(:winner)
  #binding.pry
end
