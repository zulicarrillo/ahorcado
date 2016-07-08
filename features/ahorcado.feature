Feature: Ahorcado
	Scenario: Mostrar palabra secreta
	Given Estoy en la pagina de inicio
	Then quiero ver el mensaje "palabra secreta"

	Scenario: Mostrar la cantidad de letras de la palabra secreta
	Given Estoy en la pagina de inicio
	Then quiero ver la cantidad de letras de la palabra secreta sea "5" 


