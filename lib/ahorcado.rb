class Ahorcado
	def initialize
	@ary = ["auto", "arbol", "gato", "reloj"] 
	@palabra=@ary.sample
	@cantidadLetras= @palabra.length
	end

	def obtenerPalabra()
	@palabra
	end
	
	def obtenerCantidadLetras()
	@cantidadLetras
	end
end
