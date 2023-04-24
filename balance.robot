***Settings***
Resource    resources/base.robot

Test Setup       Abrir app
Test Teardown    Fechar app
Library    String

***Test Cases***
Ver meu saldo
    Mostra saldo
    Meu salvo deve ser de    R$ 5.500,00

Teste de menus
    Clicar em indicar amigos
    Clicar em cobrar
    Clicar em depositar
    Clicar em transferir
    Deslizar menu
    Clicar em Pagar
    Clicar em Bloquear cartão
    Clicar em Cartão virtual

Teste do menu "Indicar amigos"
    Clicar em "indicar amigos"
    Deve aparecer a opção de "E-MAIL"
    Deve aparecer a opção de "FACEBOOK MESSENGER"
    Deve aparecer a opção de "WHATSAPP"
    Deve aparecer a opção de "MAIS OPÇÕES"
    Deve aparecer a opção de quantas indicações foram enviadas
    Deve aparecer a opção "VER"

Teste do menu "Cobrar"
    Clicar em "Cobrar"
    Deve aparecer a opção de escrever um número
    Deve ser possível digitar um número
    Deve aparecer a opção "Confirmar"

Teste do menu "Depositar"
    Clicar em "Depositar"
    Deve aparecer a opção "Depositar por boleto"
    Deve aparecer a opção "Depositar por TED"
    Deve aparecer a opção "Trazer seu salário"

Teste do menu "Transferir"
    Clicar em "Transferir"
    Deve aparecer a opção de "Transferir para um novo contato"
    Deve aparecer a opção "Fernando Papito(você)"
    Deve aparecer a opção "Reed Richards"
    Deve aparecer a opção "Tony Stark"
    Deve aparecer a opção "Stan Lee"
    Deve aparecer a opção "Hank Pym"
    Deve aparecer a opção "Buscar Contato"
    Deve ser possivel achar o "Fernando Papito(você)"
    Deve ser possivel achar o "Reed Richards"
    Deve ser possivel achar o "Tony Stark"
    Deve ser possivel achar o "Stan Lee"
    Deve ser possivel achar o "Hank Pym"

Teste do menu "Pagar"
    Deslizar menu
    Clicar em "Pagar"
    Deve aparecer a opção "Pagar fatura do cartão"
    Deve aparecer a opção "Pagar um boleto"

Teste do menu "Bloquear cartão"
    Deslizar menu
    Clicar em "Bloquear cartão"
    Deve aparecer a frase "Você quer bloquear temporariamente o seu cartão?"
    Deve aparecer a opção "Cancelar"
    Deve aparecer a opção "Bloquear"
