get '/' do
  session[:game] = start_game
  erb :index
end

get '/bowl' do
  redirect to('/game')
end

get '/game' do
  game = session[:game]
  @frames = game.frames
  erb :game
end

