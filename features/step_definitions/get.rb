Dado("que eu acesso a API com o {string}") do |cep|
  @get = HTTParty.get "https://viacep.com.br/ws/#{cep}/json"
end

Quando("eu recebo o status code da API") do
  puts "Status Code: #{@get.code}"
end

Então("eu retorno o número do IBGE do CEP informado") do
  puts "Este é o número do IBGE para o CEP informado:" + @get.parsed_response['ibge']
end

Então("eu recebo uma mensagem de erro") do
  puts "O CEP informado não é válido: #{@get.body}"
end
