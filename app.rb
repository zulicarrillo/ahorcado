require 'sinatra'
require './lib/ahorcado'
configure do
  enable :sessions
	@@ahorcado=Ahorcado.new
	@@cantLetras= @@ahorcado.obtenerCantidadLetras
	@@cantidadPermitidos=@@ahorcado.obtenerPermitidos
	@@pista=@@ahorcado.obtenerPista
end
get '/' do
    @@cantLetras= @@ahorcado.obtenerCantidadLetras
	@palabra= @@ahorcado.obtenerPalabra
	@palabraJugador=@@ahorcado.obtenerPalabraJugador
	erb:ahorcado
end
post '/verificar' do
    @letra = params[:letra]	
	@@ahorcado.jugar(@letra)
	@@cantLetras=@@cantLetras
	@@cantidadPermitidos=@@cantidadPermitidos
	@palabraJugador=@@ahorcado.obtenerPalabraJugador
	@cantidadFallidos=@@ahorcado.obtenerFallidos
    @mensajeJuego=@@ahorcado.obtenerMensaje
    erb:ahorcado
end

post '/pista' do
	@@cantLetras=@@cantLetras
	@@cantidadPermitidos=@@cantidadPermitidos
	@pista=@@ahorcado.obtenerPista
	@palabraJugador=@@ahorcado.obtenerPalabraJugador
	@cantidadFallidos=@@ahorcado.obtenerFallidos
	@mensajeJuego=@@ahorcado.obtenerMensaje
    erb:ahorcado
end

post '/reiniciar' do
	@@ahorcado=Ahorcado.new
	@@cantLetras= @@ahorcado.obtenerCantidadLetras
	@@cantidadPermitidos=@@ahorcado.obtenerPermitidos
    @palabra= @@ahorcado.obtenerPalabra
	@palabraJugador=@@ahorcado.obtenerPalabraJugador
    erb:ahorcado
end


