get '/' do
  session[:game] = start_game
  erb :index
end

get '/bowl' do
  game = session[:game]
  game.bowl
  session[:game] = game
  redirect to('/game')
end

get '/game' do
  @game = session[:game]
  @frames = session[:game].frames
  erb :game
end

