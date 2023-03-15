*** Settings ***

Library    SeleniumLibrary


*** Variables ***

${BROWSER}       chrome
${URL}           https://www.blogdoagi.com.br

*** Keywords ***


Dado que eu acesse o site https://www.blogdoagi.com.br
    Open browser  url=${URL}    browser=${BROWSER}
    Maximize Browser Window

Quando clicar no icone da lupa
    Wait Until Element Is Enabled    //*[@id="site-branding"]/div/a/img
    Click Element    //*[@id="search-open"]

Então deve abrir o campo de pesquisa
    Wait Until Element Is Enabled    //*[@id="masthead"]/div[1]/div[2]/form/label/input
    Capture Page Screenshot 

Caso de teste 02: Pesquisa

Dado que eu click no campo de pesquisa
    Click Element    //*[@id="masthead"]/div[1]/div[2]/form/label/input
    
    
Quando digitar uma palavra na pesquisa
    Input Text    //*[@id="masthead"]/div[1]/div[2]/form/label/input    Agibank

E clicar em "Pesquisar"
    Click Button    //*[@id="masthead"]/div[1]/div[2]/form/input

Então deve exibir os "resultados da busca"
    Wait Until Element Is Enabled    //*[@id="primary"]/header/h1
    Capture Page Screenshot 
    
