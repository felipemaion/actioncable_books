class LivroBroadcastJob < ApplicationJob
  queue_as :default

  def perform(livro)
    ActionCable.server.broadcast 'estante_channel', livro: render_livro(livro)
  end

  private

  def render_livro(livro)
    ApplicationController.renderer.render(partial: 'livros/livro', locals: { livro: livro })
  end
end
