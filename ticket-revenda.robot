***Settings***
Documentation   Cadastro de ticket - REVENDA
Library         Browser


** Keywords **
[Arguments]         ${ID_CLIENTE}


**Variables**
${ID_REVENDA}       1
${USER}             victor
${SENHA}            fuego
${TITULO_TICKET}    TESTE SCRIPT - ATENDIMENTO INICIADO
${DESCRICAO}        DESCRIÇÃO TESTE DE CHAMADO NO SUPORTE


***Test Cases***
Abertura de ticket - REVENDA
    Open Browser                    http://revenda.memocashweb.com/                 chromium

    Fill Text                       css=#Cliente                                    ${ID_REVENDA}
    Fill Text                       css=#Usuario                                    ${USER}
    Fill Text                       css=#Senha                                      ${SENHA}

    Click                           css=button[id=Login]        

    #Abertura Novo Ticket
    Wait For Elements State         css=#Carregando                     visible      10
    Click                           xpath=//*[@id="navbar_esquerda"]/ul/li[4]/a
    
    Wait For Elements State         css=#listaTickets                   visible      10
    Click                           css=#TicketNovo     

    #Preenchimento do novo Ticket
    Wait For Elements State         css=div[class=jconfirm-scrollpane]  visible      10 
    Click                           css=#select2-CadastroTicketCliente-container

    Fill Text                       css=input[class=select2-search__field]           ${ID_CLIENTE}

    Click                           css=.select2-results .select2-results__options li[id$="${ID_CLIENTE}"]      

    Click                           css=#CadastroTicketAssunto                           
    Fill Text                       css=#CadastroTicketAssunto                       ${TITULO_TICKET}
    Fill Text                       css=#CadastroTicketDescricao                     ${DESCRICAO}
    Sleep                           2

    # Confirmando abertura de ticket
    Click                           xpath=/html/body/div[3]/div[2]/div/div/div/div/div[4]/button[1]
    
    # Abrindo listagem de tickets
    Click                           xpath=//*[@id="listaTickets"]/li[1]/a     



    