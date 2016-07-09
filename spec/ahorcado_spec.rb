require ("ahorcado")
describe Ahorcado do
	it "deberia mostrar true existe letra" do
			ahorcado= Ahorcado.new()
			palabra=ahorcado.obtenerPalabra()
			resultado=ahorcado.verificar("o")
			resultado.should ==true
	end
	it "deberia mostrar palabra jugador *****" do
			ahorcado= Ahorcado.new()
			palabra=ahorcado.obtenerPalabraJugador()
			palabra.should =="*****"
	end


it "dmostrar perdio juego" do
			ahorcado= Ahorcado.new()
			ahorcado.jugar("x")
          ahorcado.jugar("x")
		ahorcado.jugar("x")
	ahorcado.jugar("x")
ahorcado.jugar("x")
ahorcado.jugar("x")
palabra=ahorcado.obtenerMensaje()
palabra.should=="Perdiste"




			
	end
end
