class Ahorcado
	def initialize
	@ary = ["autos", "arbol", "gatos", "reloj"] 
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