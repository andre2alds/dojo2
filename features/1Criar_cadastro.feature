#language: pt
#utf-8

Funcionalidade: cadastrar dois empregados
Eu como usuário
Quero fazer dois novos cadastro
Para ter novos empregados cadastrados

Contexto: Dado que estou no site orangerh
Dado que eu esteja logado no site orangeh

@criar
Esquema do Cenário: cadastrar o empregado no site
Quando eu cadastro o "<empregado>"
Então o cadastro do empregado e salvo

Exemplos:
| empregado      |  
| 'Andre Luiz'   | 