class Ahorcado
	def initialize
	@ary = ["autos", "arbol", "gatos", "reloj"] 
	@palabra=@ary.sample
	#@palabra="auto"
	@cantidadLetras= @palabra.length
	@palabraJugador="autos"
	iniciarPalabraJugador()
	end
	def obtenerPalabra()
	@palabra
	end
	def obtenerPalabraJugador()
	@palabraJugador
	end

	def obtenerCantidadLetras()
	@cantidadLetras
	end
	def verificar(letra)
		if @palabra.include? letra
	  	  true
		else
		  false
		end
	end
	def iniciarPalabraJugador()
		i = 0
		num = @cantidadLetras
		while i < num  do	
		 @palabraJugador=@palabraJugador+"*"
		 i=i+1
		end
	end
end
