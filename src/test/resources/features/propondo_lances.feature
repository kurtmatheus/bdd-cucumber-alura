# language: pt

Funcionalidade: Propondo Lances ao Leilao

Cenario: Propondo um unico lance valido
Dado um lance valido
Quando propoe o lance
Entao o lance eh aceito
	
Cenario: Propondo varios lances validos
Dado um lance de 10.0 reais do usuario "fulano"
E um lance de 15.0 reais do usuario "beltrano"
Quando propoe varios lances ao leilao
Entao os lances sao aceitos

Esquema do Cenario: Propondo um lance invalido
Dado um lance invalido de <valor> reais e do usuario '<nomeUsuario>'
Quando propoe o lance
Entao o lance nao eh aceito

Exemplos:
	| valor | usuario |
	|   0		|	beltrano|
	|	 -1		| cigano	|
	| -100  | fulano	|
	
Cenario: Propondo lances em sequencia
Dado dois lances
	| valor | usuario |
	|   10 	|	beltrano|
	|	  15	| beltrano|
Quando propoe varios lances ao leilao
Entao o segundo lance nao eh aceito