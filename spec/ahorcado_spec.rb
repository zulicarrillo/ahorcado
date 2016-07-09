require ("ahorcado")
describe Ahorcado do
	it "deberia mostrar true existe letra" do
			ahorcado= Ahorcado.new()
			palabra=ahorcado.obtenerPalabra()
			resultado=ahorcado.verificar("o")
			resultado.should ==true
	end

it "deberia mostrar palabra pista *****" do
			ahorcado= Ahorcado.new()
			ahorcado.jugar("o")
			palabra=ahorcado.obtenerPalabraJugador()
			puts(palabra)
	end
end
