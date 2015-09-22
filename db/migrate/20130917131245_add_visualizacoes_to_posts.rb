class AddVisualizacoesToPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :visualizacoes, :integer
    Post.update_all 'visualizacoes = 0'
  end

  def self.down
    remove_column :posts, :visualizacoes
  end
end
