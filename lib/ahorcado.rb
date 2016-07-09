class Ahorcado
	def initialize

	@ary = ["autos", "arbol", "gatos", "reloj"] 
    @pos=rand(@ary.size())
	@palabra=@ary[@pos]
	@pista= ["tienen Cuatro Ruedas","es verde y frondoso","es felino","marca las horas"]
	#@palabra="autos"
    @palabraPista=@pista[@pos]
	@ary = ["autos", "arbol", "altos", "reloj"] 
	@palabra=@ary.sample
	#@palabra="autos"
    @cantidadFallidos=0
	@cantidadPermitidos=6
	@cantidadLetras= @palabra.length
	@palabraJugador=""
	@mensajeJuego=""
    @palabraMostrar=""
	iniciarPalabraJugador()
	end

    def obtenerFallidos()
	@cantidadFallidos
	end 

	 def obtenerPermitidos()
	@cantidadPermitidos
	end	

	def obtenerMensaje()
	@mensajeJuego
	end

    def obtenerPista()
    @cantidadFallidos+=1
 	if @cantidadFallidos>@cantidadPermitidos
    @mensajeJuego="Perdiste"
	end
	@palabraPista
	end
	def obtenerPalabra()
	@palabra
	end
	def obtenerPalabraJugador()
     @palabraMostrar=""
     i = 0
		num = @cantidadLetras
		while i < num  do	
		 aux=@palabraJugador[i]
				if("*"==aux)
					 @palabraMostrar=@palabraMostrar+"- "
				else
						@palabraMostrar=@palabraMostrar+aux+" "
				end
			i=i+1
		end
     
	@palabraMostrar
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
