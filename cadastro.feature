            #language: pt

            Funcionalidade: Tela de cadastro
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto: Dado que eu estou finalizando minha compra e devo me cadastrar

            Cenário: E-mail com formato invalido
            Quando eu inserir o e-mail "danieleebac.com.br"
            Então deve exibir mensagem de alerta "E-mail inserido com formato invalido"

            Esquema do Cenario: Preencher formulário
            Quando eu deixar de preencher algum <campo obrigatorio>
            E tentar finalizar a compra
            Então deve exibir <mensagem> de alerta

            | campo obrigatorio | mensagem                    |
            | nome              | "Preenchimento obrigatório" |
            | Endereço          | "Preenchimento obrigatório" |
            | Telefone          | "Preenchimento obrigatório" |
            | E-mail            | "Preenchimento obrigatório" |

