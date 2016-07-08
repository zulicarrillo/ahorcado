require("tenis")

describe Tenis do
  it "deberia mostrar 0 iguales" do
			tenis =Tenis.new#arrange
			cantidad1=tenis.jugador1#act
			cantidad2=tenis.jugador2#act
			cantidad1.should==0# assert
			cantidad2.should==0# assert
  end

	it "deberia incrementar el score a 1 jugador a la vez" do
	tenis= Tenis.new 
	puntaje1= tenis.adpuntaje1 (0)
	puntaje2= tenis.adpuntaje2 (15)
	puntaje1.should==0
	puntaje2.should==15
	end

it "mostrar la palabra iguales en puntajes iguales"
tenis= Tenis.new
punto1=tenis.setpunto

end
