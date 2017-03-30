class CreateLivros < ActiveRecord::Migration[5.0]
  def change
    create_table :livros do |t|
      t.string :autor
      t.string :titulo
      t.string :editora

      t.timestamps
    end
  end
end
