require 'sinatra'
require './lib/ahorcado'
configure do
  enable :sessions
	@@ahorcado=Ahorcado.new
end
get '/' do
	erb:ahorcado
"Palabra Secreta " +
" Cantidad de letras #{@@ahorcado.obtenerCantidadLetras}"
end
