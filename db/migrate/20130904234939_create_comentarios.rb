class CreateComentarios < ActiveRecord::Migration
  def self.up
    create_table :comentarios do |t|
      t.string :nome, limit: 50
      t.text :comentario, limit: 250
      t.references :post

      t.timestamps
    end
  end

  def self.down
    drop_table :comentarios
  end
end
