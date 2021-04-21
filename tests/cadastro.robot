***Settings***

Resource            ../resources/base.robot

***Test Cases***
Acessando a home do portal
    #Executa a Keyword antes de cada TestCase
    Open Session

    Wait Until Page Contains                Português (Brasil)
    Click Text                              Português (Brasil)

    Click Text                              Confirmar

Informações do Usuário
    Wait Until Element Is Visible           ${SOU_NOVO_AQUI}
    Click Element                           ${SOU_NOVO_AQUI}
    Capture Page Screenshot

    # Tem cachorro
    Wait Until Element Is Visible           ${TEM_CACHORRO}
    Click Element                           ${TEM_CACHORRO}

    #Vc ama cachorros
    Click Text                              ${AMA_CACHORROS}

    #Quero participar
    Click Text                              ${PARTICIPAR}

    #Quero ser heroi
    Wait Until Element Is Visible           ${SER_HEROI} 
    Click Element                           ${SER_HEROI}

    #Cadastro
    Wait Until Page Contains                ${TELA_CADASTRO}

Cadastro do Usuário
    ${email}                                FakerLibrary.Email
    ${senha}                                FakerLibrary.Password

    #Realizar Cadastro
    Wait Until Element Is Visible           ${BOTÃO_CADASTRO}
    Click Element                           ${BOTÃO_CADASTRO}


    #Dados para realizar o cadastro
    #Email
    Wait Until Element Is Visible           ${USER_EMAIL}
    Input Text                              ${USER_EMAIL}           ${email}                                                        

    #Nome
    Wait Until Element Is Visible           ${USER_NOME}
    Input Text                              ${USER_NOME}            ragna                 

    #Sobrenome                                    
    Wait Until Element Is Visible           ${USER_SOBRENOME}       
    Input Text                              ${USER_SOBRENOME}       lothbrok                             

    #Celular
    Wait Until Element Is Visible           ${USER_CELULAR}
    Input Text                              ${USER_CELULAR}         (11) 9999-8888

    #Password
    Wait Until Element Is Visible           ${USER_PASS}     
    Input Text                              ${USER_PASS}              ${senha}                

    #Onde nos conheceu
    Wait Until Element Is Visible           ${ONDE_CONHECEU}      
    Input Text                              ${ONDE_CONHECEU}          Youtube

    #Botão Cadastrar
    Wait Until Element Is Visible           ${BOTÃO_CADASTRAR}
    Click Element                           ${BOTÃO_CADASTRAR}
    Capture Page Screenshot

Resumo do Cadastro de Anfitrião
    Wait Until Page Contains                ${COMPLETE_ETAPAS}

    Wait Until Element Is Visible           ${INFO_PESSOAIS}
    Click Element                           ${INFO_PESSOAIS}

    #Dados Pessoais
    Wait Until Page Contains                ${INFO_DADOS_PESSOAOIS}
    Capture Page Screenshot

    #Executa a Keyword depois de cada TestCase
    Close Session



