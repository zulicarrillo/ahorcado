Feature: Tenis
	Scenario: Inicio con marcador 0-0
	Given Estoy en la pagina de inicio
	Then quiero ver el score "0-0"

	Scenario: Mostrar el boton jugador1
	Given Estoy en la pagina de inicio
	Then quiero ver el boton "jugador1"

	Scenario: Mostrar el boton jugador2
	Given Estoy en la pagina de inicio
	Then quiero ver el boton "jugador2"

	Scenario: Click sobre el boton jugador1
	Given Estoy en la pagina de inicio
	When presiono el boton"jugador1"
	Then quiero ver el mensaje "score"

	Scenario: Click sobre el boton jugador1
	Given Estoy en la pagina de inicio
	When presiono el boton "jugador1"
	Then quiero ver el puntaje 
	
	Scenario: Click sobre el boton jugador2
	Given Estoy en la pagina de inicio
	When presiono el boton "jugador2"
	Then quiero ver el puntaje "0 - 15"


