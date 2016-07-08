require 'sinatra'
require './lib/ahorcado'
configure do
  enable :sessions
	@@ahorcado=Ahorcado.new
end
get '/' do
    @letra= @@ahorcado.obtenerCantidadLetras
	erb:ahorcado
end


