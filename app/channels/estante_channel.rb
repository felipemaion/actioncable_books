class EstanteChannel < ApplicationCable::Channel
  def subscribed
     stream_from "estante_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def adiciona (data)
    puts "Visualizando dados no servidor: #{data}"
    Livro.create! autor: data['autor'], titulo: data['titulo'], editora: data['editora']
  end
end
