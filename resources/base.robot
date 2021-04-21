***Settings***
Documentation       Estrutura do projeto

Library             AppiumLibrary

Library             FakerLibrary    locale=pt_BR

***Variables***

${SOU_NOVO_AQUI}            id=br.com.doghero.astro.onboarding:id/btn_signup
${TEM_CACHORRO}             xpath=//*[contains(@text,"NÃO")]
${AMA_CACHORROS}            SIM, CLARO
${PARTICIPAR}               QUERO PARTICIPAR!
${SER_HEROI}                xpath=//*[contains(@text,"QUERO SER HERÓI")]
${TELA_CADASTRO}            Ou digite e-mail e senha
${BOTÃO_CADASTRO}           id=br.com.doghero.astro:id/sign_up_button
${USER_EMAIL}               id=br.com.doghero.astro:id/signup_email_textview
${USER_NOME}                id=br.com.doghero.astro:id/signup_first_name_textview
${USER_SOBRENOME}           id=br.com.doghero.astro:id/signup_last_name_textview
${USER_CELULAR}             id=br.com.doghero.astro:id/signup_phone_textview
${USER_PASS}                id=br.com.doghero.astro:id/signup_password_textview
${ONDE_CONHECEU}            id=br.com.doghero.astro:id/signup_how_did_you_meet_us_textview     
${BOTÃO_CADASTRAR}          id=br.com.doghero.astro:id/signup_button
${COMPLETE_ETAPAS}          Complete as etapas para se candidatar a Anfitrião DogHero
${INFO_PESSOAIS}            id=br.com.doghero.astro:id/view_personal_info
${INFO_DADOS_PESSOAOIS}     Dados Pessoais

***Keywords***
Open Session
    Set Appium Timeout      10
    Open Application        http://localhost:4723/wd/hub
    ...                     automationName=UiAutomator2
    ...                     platformName=Android
    ...                     deviceName=Emulator
    ...                     app=${EXECDIR}/app/doghero.apk

Close Session
    Close Application