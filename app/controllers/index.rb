get '/' do
  @frames = []
  erb :index
end

get '/bowl' do
  redirect to('/')
end

