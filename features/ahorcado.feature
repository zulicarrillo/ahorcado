Feature: Ahorcado

	Scenario: Mostrar la cantidad de letras de la palabra secreta
	Given Estoy en la pagina de inicio
	Then quiero ver la cantidad de letras de la palabra secreta sea "5"

	Scenario: Ingresar letra de palabra secreta
	Given Estoy en la pagina de inicio
	Then quiero un texto que diga "Ingrese Letra"

	Scenario: Mostrar la palabra que ingresa el jugador
	Given Estoy en la pagina de inicio
	Then quiero ver que la palabra ingresada sea "autos"


