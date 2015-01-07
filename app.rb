require('sinatra')
require('sinatra/reloader')
require('./lib/rock_paper')

get('/') do
  erb(:game)
end

get('/result') do
  @answer = params.fetch('player_one').beats?(params.fetch('player_two'))
  erb(:result)
end
