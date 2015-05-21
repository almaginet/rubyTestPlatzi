require 'sinatra'
require './come_platzi'

ruta = File.expand_path(File.dirname(__FILE__))

set :environment, :development
set :root, ruta
set :app_file, File.join(ruta, 'come_platzi.rb')
disable :run

run Sinatra::Application