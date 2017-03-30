App.estante = App.cable.subscriptions.create "EstanteChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('#livros').append data['livro']
    
  adiciona: (editora,titulo,autor) ->
    return @perform 'adiciona', titulo:titulo, editora:editora, autor:autor #, editora:data.editora, autor:data.autor)