#language: pt
#encoding: utf-8

@posts
Funcionalidade: posts
  Como usuário
  Para que eu crie um post
  Eu quero criar um post

  #index
  Cenário: Listar todos os posts
    Dado que existam 2 posts criados
    Dado que eu esteja na página inicial
    Quando eu clicar no link para "posts"
    Entao eu devo ver a lista de postagens com 2 itens

  #create
  Cenário: Criar um posts

  #show
  Cenário: Mostrar um posts

  #edit
  Cenário: Editar um posts

  #destroy
  Cenário: Deletar um posts
