require 'sinatra'
require './papa_delmont'

before do 
  @app = PapaDelmont::App.new
  @app.vista = self
end

get '/alimentos' do
	@app.lista
end

public def alimentos_leidos
  erb :alimentos
end