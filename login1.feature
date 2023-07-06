            #language: pt

            Funcionalidade: Tela de login
            Como cliente da EBAC-SHOP
            Quero fazer login na plataforma
            Para visualizar meus pedidos

            Contexto: Dado que eu acesse a página de autenticação da EBAC-SHOP

            Cenário: Autenticação valida
            Quando eu digitar o usuário "daniele@ebacshop.com.br"
            E a senha "abc@123"
            Então deve direcionar para a "tela de checkout"

            Cenário: Usuário inexiste
            Quando eu digitar o usuário "daniele@ebacshop.com"
            E a senha "abc@123"
            Então deve exibir mensagem de alerta "Usuário ou senha inválidos"

            Cenário: Usuário com senha invalida
            Quando eu digitar o usuário "daniele@ebac.com.br"
            E a senha "abc123"
            Então deve exibir mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar <usuario>
            E a <senha>
            Então deve enviar <mensagem> de alerta

            Exemplos:
            | usuário             | senha   | mensagem                     |
            | daniele@ebac.com    | abc@123 | "Usuário ou senha invalidos" |
            | daniele@ebac.com.br | abc123  | "Usuário ou senha invalidos" |