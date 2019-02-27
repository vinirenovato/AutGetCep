#language: pt
#encoding: utf-8

Funcionalidade: Buscar endereço a partir de um CEP

  @sucesso
  Esquema do Cenario: Cenario: Buscar endreço com CEP válido
    Dado que eu acesso a API com o "<cep>"
    Quando eu recebo o status code da API
    Então eu retorno o número do IBGE do CEP informado

    Exemplos:
      | cep      |
      | 01010000 |

  @erro
  Esquema do Cenario: Cenario: Buscar endreço com CEP inválido
    Dado que eu acesso a API com o "<cep>"
    Quando eu recebo o status code da API
    Então eu recebo uma mensagem de erro

    Exemplos:
      | cep  |
      | abcd |