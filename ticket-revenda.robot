***Settings***
Documentation   Cadastro de ticket - REVENDA
Library         Browser


** Keywords **
[Arguments]         ${id_cliente}
Log     ID de cliente informado pelo prompt:    ${id_cliente}

**Variables**
${ID_REVENDA}       1
${USER}             <substitua_pelo_seu_usuário>
${SENHA}            <substitua_pela_sua_senha>
${TITULO_TICKET}    ATENDIMENTO INICIADO
${DESCRICAO}        CHAMADO DO CLIENTE ESTÁ 'EM ANÁLISE PELO DEPTO SUPORTE', AGUARDAR INTERAÇÃO PARA MAIS DETALHES..


***Test Cases***
Abertura de ticket - REVENDA
    Open Browser                    <https://url_do_paineil.com>                    chromium

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

    Fill Text                       css=input[class=select2-search__field]           ${id_cliente}

    Click                           css=.select2-results .select2-results__options li[id$="-${id_cliente}"]      

    Click                           css=#CadastroTicketAssunto                           
    Fill Text                       css=#CadastroTicketAssunto                       ${TITULO_TICKET}
    Fill Text                       css=#CadastroTicketDescricao                     ${DESCRICAO}
    Sleep                           3

    # Confirmando abertura de ticket
    Click                           xpath=/html/body/div[3]/div[2]/div/div/div/div/div[4]/button[1]
    
    # Abrindo listagem de tickets
    Click                           xpath=//*[@id="listaTickets"]/li[1]/a     



    