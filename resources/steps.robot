*** Settings ***
Library    AppiumLibrary

*** Variables ***
${Indicar_amigos}                          //android.widget.TextView[@text="Indicar amigos"]
${Cobrar}                                  //android.widget.TextView[@text="Cobrar"]
${Depositar}                               //android.widget.TextView[@text="Depositar"]
${Transferir}                              //android.widget.TextView[@text="Transferir"]
${Transferir2}                             //android.widget.TextView[@text="TRANSFERIR"]
${Pagar}                                   //android.widget.TextView[@text="Pagar"]
${Bloquear_cartão}                         //android.widget.TextView[@text="Bloquear cartão"]    
${Cartão_virtual}                          //android.widget.TextView[@text="Cartão virtual"]
${X}                                       //android.widget.TextView[1] 
${clicar_fora_do_elemento}                 //android.widget.TextView[@text="NuConta"]
${Opção_E-mail}                            //android.widget.TextView[@text="E-MAIL"]
${Opção_Facebbok_messenger}                //android.widget.TextView[@text="FACEBOOK MESSENGER"]
${Opção_Whatsapp}                          //android.widget.TextView[@text="WHATSAPP"]
${Opção_mais_opções}                       //android.widget.TextView[@text="MAIS OPÇOES"]
${Opção_Indicações}                        //android.widget.TextView[@text="6 indicaçoes enviadas"]
${Opção_ver}                               //android.widget.TextView[@text="VER"]
${Opção_escrever_um_numero}                //*[@content-desc='to-charge']
${Confirmar}                               //android.widget.TextView[@text="CONFIRMAR"]
${Opção_depositar_por_boleto}              //android.widget.TextView[@text="Depositar por boleto"]
${Opção_depositar_por_TED}                 //android.widget.TextView[@text="Depositar por TED"]
${Opção_trazer_seu_salario}                //android.widget.TextView[@text="Receba todo mês e não perca nenhum dia de rendimento"]
${Opção_transferir_para_novo_contato}      //android.widget.TextView[@text="Transferir para um novo contato"]
${Opção_fernando_papito}                   //android.widget.TextView[@text="Fernando Papito (Você)"]
${Opção_Reed_Richards}                     //android.widget.TextView[2]
${Opção_Tony_Stark}                        //android.widget.TextView[@text="Tony Stark"]
${Opção_Stan_Lee}                          //android.widget.TextView[@text="Stan Lee"]
${Opção_Hank_Pym}                          //android.widget.TextView[@text="Hank Pym"]
${Opção_Buscar_Contato}                    //android.widget.EditText
${Opção_pagar_fatura}                      //android.widget.TextView[@text="Pagar fatura do cartão"]
${Opção_pagar_um_boleto}                   //android.widget.TextView[@text="Pagar um boleto"]
${Opção_cancelar}                          //android.widget.TextView[@text="CANCELAR"]
${Opção_bloquear}                          //android.widget.TextView[@text="BLOQUEAR"]
${Frase_entrada_menu_bloquear_cartão}      //android.widget.TextView[@text="Você quer bloquear temporariamente o seu cartão?"]

*** Keywords ***
Mostra saldo
    Click Element       accessibility_id=show-balance

Meu salvo deve ser de 
    [Arguments]    ${saldo}
    
    Wait Until Element Is Visible   accessibility_id=user-balance    10
    Element Text Should Be          accessibility_id=user-balance    ${saldo}  

Clicar em indicar amigos  
    Wait Until Element Is Visible    xpath=${Indicar_amigos}
    Click Element                    xpath=${Indicar_amigos}
    Wait Until Element Is Visible    xpath=${X}    10
    Click Element                    xpath=${X} 

Clicar em cobrar
    Wait Until Element Is Visible    xpath=${Cobrar}  
    Click Element                    xpath=${Cobrar}  
    Wait Until Element Is Visible    xpath=${X}    10
    Click Element                    xpath=${X}

Clicar em depositar
    Wait Until Element Is Visible    xpath=${Depositar}  
    Click Element                    xpath=${Depositar}  
    Wait Until Element Is Visible    xpath=${X}    10
    Click Element                    xpath=${X}

Clicar em transferir
    Wait Until Element Is Visible    xpath=${Transferir}  
    Click Element                    xpath=${Transferir} 
    Wait Until Element Is Visible    xpath=${Transferir2}
    Wait Until Element Is Visible    xpath=${X}    10
    Click Element                    xpath=${X}

Deslizar menu
    Wait Until Element Is Visible    xpath=${Depositar}    
    Wait Until Element Is Visible    xpath=${Transferir}
    Swipe    1073    1992    67    1988    1000     

Clicar em Pagar
    Wait Until Element Is Visible    xpath=${Pagar}  
    Click Element                    xpath=${Pagar} 
    Wait Until Element Is Visible    xpath=${X}    10
    Click Element                    xpath=${X}

Clicar em Bloquear cartão
    Wait Until Element Is Visible    xpath=${Bloquear_cartão}  
    Click Element                    xpath=${Bloquear_cartão} 
    Wait Until Element Is Visible    xpath=${clicar_fora_do_elemento} 
    Click Element                    xpath=${clicar_fora_do_elemento} 

Clicar em Cartão virtual
    Wait Until Element Is Visible    xpath=${Cartão_virtual} 
    Click Element                    xpath=${Cartão_virtual}
    Wait Until Element Is Visible    xpath=${X} 
    Click Element                    xpath=${X} 

Clicar em "indicar amigos"
    Wait Until Element Is Visible    xpath=${Indicar_amigos}
    Click Element                    xpath=${Indicar_amigos}

Deve aparecer a opção de "E-MAIL"
    Wait Until Element Is Visible    xpath=${Opção_E-mail}    10

Deve aparecer a opção de "FACEBOOK MESSENGER"
    Wait Until Element Is Visible    xpath=${Opção_Facebbok_messenger}    10

Deve aparecer a opção de "WHATSAPP"
    Wait Until Element Is Visible    xpath=${Opção_Whatsapp}    10

Deve aparecer a opção de "MAIS OPÇÕES"
    Wait Until Element Is Visible    xpath=${Opção_mais_opções}    10

Deve aparecer a opção de quantas indicações foram enviadas
    Wait Until Element Is Visible    xpath=${Opção_Indicações}    10

Deve aparecer a opção "VER"
    Wait Until Element Is Visible    xpath=${Opção_ver}    10

Clicar em "Cobrar"
    Wait Until Element Is Visible    xpath=${Cobrar}  
    Click Element                    xpath=${Cobrar} 

Deve ser possível digitar um número
    Input Text                       xpath=${Opção_escrever_um_numero}     text=2000

Deve aparecer a opção de escrever um número
    Wait Until Element Is Visible    xpath=${Opção_escrever_um_numero}    10
    Click Element                    xpath=${Opção_escrever_um_numero}
    
Deve aparecer a opção "Confirmar"
    Wait Until Element Is Visible    xpath=${Confirmar}     10
    
Clicar em "Depositar"
    Wait Until Element Is Visible    xpath=${Depositar}  
    Click Element                    xpath=${Depositar}

Deve aparecer a opção "Depositar por boleto"
    Wait Until Element Is Visible    xpath=${Opção_depositar_por_boleto} 

Deve aparecer a opção "Depositar por TED"
    Wait Until Element Is Visible    xpath=${Opção_depositar_por_TED}   

Deve aparecer a opção "Trazer seu salário"
    Wait Until Element Is Visible    xpath=${Opção_trazer_seu_salario}   

Clicar em "Transferir"
    Wait Until Element Is Visible    xpath=${Transferir}  
    Click Element                    xpath=${Transferir} 

Deve aparecer a opção de "Transferir para um novo contato"
    Wait Until Element Is Visible    xpath=${Opção_transferir_para_novo_contato}

Deve aparecer a opção "Fernando Papito(você)"
    Wait Until Element Is Visible    xpath=${Opção_fernando_papito}   
Deve aparecer a opção "Reed Richards"
    Wait Until Element Is Visible    xpath=${Opção_Reed_Richards} 

Deve aparecer a opção "Tony Stark"
    Wait Until Element Is Visible    xpath=${Opção_Tony_Stark} 

Deve aparecer a opção "Stan Lee"
    Wait Until Element Is Visible    xpath=${Opção_Stan_Lee} 

Deve aparecer a opção "Hank Pym"
    Wait Until Element Is Visible    xpath=${Opção_Hank_Pym} 

Deve aparecer a opção "Buscar Contato"
    Wait Until Element Is Visible    xpath=${Opção_Buscar_Contato} 
    Click Element                    xpath=${Opção_Buscar_Contato} 

Deve ser possivel achar o "Fernando Papito(você)"
    Input Text                       xpath=${Opção_Buscar_Contato}     text=F
    Wait Until Element Is Visible    xpath=${Opção_fernando_papito}    

Deve ser possivel achar o "Reed Richards"
    Input Text                       xpath=${Opção_Buscar_Contato}     text=R
    Wait Until Element Is Visible    xpath=${Opção_Reed_Richards}  

Deve ser possivel achar o "Tony Stark"
    Input Text                       xpath=${Opção_Buscar_Contato}     text=To
    Wait Until Element Is Visible    xpath=${Opção_Tony_Stark}    

Deve ser possivel achar o "Stan Lee"
    Input Text                       xpath=${Opção_Buscar_Contato}     text=St
    Wait Until Element Is Visible    xpath=${Opção_Stan_Lee}    

Deve ser possivel achar o "Hank Pym"
    Input Text                       xpath=${Opção_Buscar_Contato}     text=H
    Wait Until Element Is Visible    xpath=${Opção_Hank_Pym}    

Clicar em "Pagar"
    Wait Until Element Is Visible    xpath=${Pagar}  
    Click Element                    xpath=${Pagar} 

Deve aparecer a opção "Pagar fatura do cartão"
    Wait Until Element Is Visible    xpath=${Opção_Pagar_fatura} 

Deve aparecer a opção "Pagar um boleto"
    Wait Until Element Is Visible    xpath=${Opção_pagar_um_boleto} 

Clicar em "Bloquear cartão"
    Wait Until Element Is Visible    xpath=${Bloquear_cartão}  
    Click Element                    xpath=${Bloquear_cartão} 

Deve aparecer a frase "Você quer bloquear temporariamente o seu cartão?"
    Wait Until Element Is Visible    xpath=${Frase_entrada_menu_bloquear_cartão}
Deve aparecer a opção "Cancelar"
    Wait Until Element Is Visible    xpath=${Opção_cancelar}

Deve aparecer a opção "Bloquear"
    Wait Until Element Is Visible    xpath=${Opção_bloquear} 
