*** Settings ***
Documentation   Essa suite testa o site https://www.blogdoagi.com.br/
Resource        Agibank_resources.robot



*** Test Cases ***
Caso de teste 01: acessar pagina de pesquisa
    Dado que eu acesse o site https://www.blogdoagi.com.br
    Quando clicar no icone da lupa
    Então deve abrir o campo de pesquisa


Caso de teste 02: Pesquisa
    Dado que eu click no campo de pesquisa
    Quando digitar uma palavra na pesquisa
    E clicar em "Pesquisar"
    Então deve exibir os "resultados da busca"