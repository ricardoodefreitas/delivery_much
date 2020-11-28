#language: pt

@consultar_escrita
Funcionalidade: Consultar escrita por extenso de um numero

@consultar_escrita_valido
Esquema do Cenario: Consultar escrita de um numero por extenso
  Dado um numero gerado para consulta da escrita por extenso utilizando o idioma <language>
  Quando realizar a consulta atraves da API disponivel
  Então o sistema deve retornar o codigo da operacao <expected_code> juntamente com o numero escrito por extenso
  Exemplos:
    |language    |expected_code|
    |'english'   |200          |
    |'portuguese'|200          |

@consultar_escrita_invalido
Esquema do Cenario: Realizar uma consulta de escrita com numero invalido
  Dado um numero gerado fora do limite permitido para consulta da escrita por extenso utilizando o idioma <language>
  Quando realizar a consulta atraves da API disponivel
  Então o sistema deve retornar o codigo da operacao <expected_code> juntamente com uma mensagem informando a opecao invalida
  Exemplos:
    |language    |expected_code |
    |'english'   |400           |
    |'portuguese'|400           |