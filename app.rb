require 'sinatra'
require './lib/ahorcado'
configure do
  enable :sessions
	@@ahorcado=Ahorcado.new
	@cantLetras= @@ahorcado.obtenerCantidadLetras
end
get '/' do
    @cantLetras= @@ahorcado.obtenerCantidadLetras
	@palabra= @@ahorcado.obtenerPalabra
	@palabraJugador=@@ahorcado.obtenerPalabraJugador
	erb:ahorcado
end
post '/verificar' do
    @cantLetras= @@ahorcado.obtenerCantidadLetras
	@letra = params[:letra]	
	@@ahorcado.jugar(@letra)
	@palabraJugador=@@ahorcado.obtenerPalabraJugador
    @mensajeJuego=@@ahorcado.obtenerMensaje
    erb:ahorcado
end




