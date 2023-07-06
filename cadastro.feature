            #language: pt

            Funcionalidade: Tela de cadastro
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto: Dado que eu estou finalizando minha compra e devo me cadastrar

            Cenário: Campos obrigatórios e vazios
            Quando eu não preencher o campo "Nome" e clicar em "Finalizar compra"
            Então deve exibir mensagem de alerta "Preenchimento obrigatório"

            Cenário: E-mail com formato invalido
            Quando eu inserir o e-mail "danieleebac.com.br"
            Então deve exibir mensagem de alerta "E-mail inserido com formato invalido"

            Esquema do Cenario: Preencher formulário
            Quando eu deixar <campo> vazio
            E finalizar a compra
            Então deve exibir <mensagem> de alerta

            | campo    | mensagem                    |
            | nome     | "Preenchimento obrigatório" |
            | Endereço | "Preenchimento obrigatório" |
            | Telefone | "Preenchimento obrigatório" |
            | E-mail   | "Preenchimento obrigatório" |

            Quando eu inserir <e-mail>
            Então deve exibir <mensagem> de alerta

            | e-mail          | mensagem                               |
            | daniele.com.br  | "E-mail inserido com formato invalido" |
            | daniele@ebac    | "E-mail inserido com formato invalido" |
            | daniele@.com.br | "E-mail inserido com formato invalido" |
