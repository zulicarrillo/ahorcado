require 'sinatra'
require './lib/ahorcado'
configure do
  enable :sessions
	@@ahorcado=Ahorcado.new
end
get '/' do
    @letra= @@ahorcado.obtenerCantidadLetras
	@palabra= @@ahorcado.obtenerPalabra
	@palabraJugador=@@ahorcado.obtenerPalabraJugador.include? "o"
	erb:ahorcado
end




