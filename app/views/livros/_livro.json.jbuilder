json.extract! livro, :id, :autor, :titulo, :editora, :created_at, :updated_at
json.url livro_url(livro, format: :json)
