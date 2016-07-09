class Ahorcado
	def initialize
	@ary = ["autos", "arbol", "altos", "aeloj"] 
	@palabra=@ary.sample
	@palabra="autos"
   @cantidadFallidos=0
	@cantidadPermitidos=6
	@cantidadLetras= @palabra.length
	@palabraJugador=""
	@mensajeJuego=""
	iniciarPalabraJugador()
	end

	def obtenerMensaje()
	@mensajeJuego
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

	def remplazarLetra(letra)
	verificar=verificar(letra)
		if(verificar)
			i = 0
	     	num = @cantidadLetras
			aux=""
			while i < num  do	
			aux=@palabra[i]
				if(letra==aux)
					 @palabraJugador[i]=letra
				end
			i=i+1
			end
		else
         @cantidadFallidos+=1 		
		end
	 end

	def jugar(letra)
         if @cantidadFallidos<@cantidadPermitidos
             remplazarLetra(letra)
				if @cantidadFallidos<@cantidadPermitidos
				     if @palabra==@palabraJugador
					 
                     @mensajeJuego="Gano"
					 end	
                else 
                    @mensajeJuego="Perdiste" 				
				end

          else
             @mensajeJuego="Perdiste"
			end        
		
	end
end
