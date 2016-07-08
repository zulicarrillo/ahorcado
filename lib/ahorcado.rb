class Ahorcado
	def initialize
	@ary = ["autos", "arbol", "gatos", "reloj"] 
	@palabra=@ary.sample
	@cantidadLetras= @palabra.length
	@palabraJugador=""
	end

	def obtenerPalabra()
	@palabra
	end
	
	def obtenerCantidadLetras()
	@cantidadLetras
	end

	def verificar(letra)
		if @palabra.include? letra
	   	  "incluye"
		else
		  "no incluye"
		end
	end
end
