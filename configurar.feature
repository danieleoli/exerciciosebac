#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo
com meu tamanho e gosto
e escolher a quantidade
para depois inserir no carrinho

Contexto: Dado que eu acesse a plataforma da EBAC-SHOP

Cenário: Selecionar cor, tamanho e quantidade
Quando eu selecionar "cor", "tamanho" e "quantidade"
Então o resultado deve ser selecionar todos os itens

Cenário: Campos obrigatórios
Quando eu não selecionar "cor", "tamanho" e "quantidade"
Então o resultado deve exibir uma mensagem de alerta "Preenchimento obrigatório"

Cenário: Quantidade de produtos por venda
Quando eu selecionar "mais de 10 produtos" e inserir no carrinho
Então o resultado deve ser exibir uma mensagem de alerta "Não é possivel adicionar mais de 10 produtos ao carrinho"

Cenário: Limpar
Quando eu clicar no botão "Limpar"
Então o resultado deve ser "voltar ao estado original"