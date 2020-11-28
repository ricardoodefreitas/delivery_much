# consulta escrita utilizando valores validos
Dado('um numero gerado para consulta da escrita por extenso utilizando o idioma {string}') do |language|
  @language = language
  @number = rand(-10000...10000)
  p "O numero gerado foi: #{@number}"
end

Então('o sistema deve retornar o codigo da operacao {int} juntamente com o numero escrito por extenso') do |expected_code|
  expect(@search_return.code).to eql(expected_code)
end

# consulta escrita utilizando valores invalidos
Dado('um numero gerado fora do limite permitido para consulta da escrita por extenso utilizando o idioma {string}') do |language|
  @language = language
  @number = rand(15000..20000)
  p "O numero gerado foi: #{@number}"
end

Então('o sistema deve retornar o codigo da operacao {int} juntamente com uma mensagem informando a opecao invalida') do |expected_code|
  expect(@search_return.code).to eql(expected_code)
end
