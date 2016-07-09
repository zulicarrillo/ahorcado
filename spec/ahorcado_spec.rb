require ("ahorcado")
describe Ahorcado do
	it "deberia mostrar true existe letra" do
			ahorcado= Ahorcado.new()
			palabra=ahorcado.obtenerPalabra()
			resultado=ahorcado.verificar("l")
			resultado.should ==false
	end
	it "deberia mostrar palabra jugador *****" do
			ahorcado= Ahorcado.new()
			palabra=ahorcado.obtenerPalabraJugador()
			palabra.should =="****"
	end

end
