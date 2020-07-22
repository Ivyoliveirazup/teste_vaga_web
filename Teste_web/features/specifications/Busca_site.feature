#language: pt
#utf-8

Funcionalidade: Buscar e escolher um produto

  Cenário: Fazer a busca e escolha de um produto
    Dado que acesso a url desejada
    E digito o produto TV
    Quando visualizo a lista de TVs
    E seleciono o produto desejado
    E clico em comprar
    Então clico em continuar
    E visualizo o produto no cesta de compras

