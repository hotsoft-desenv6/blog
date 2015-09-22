class ComentariosController < ApplicationController

  # POST /comentarios
  # POST /comentarios.xml
  def create
    @post = Post.find(params[:post_id])
    @comentario = @post.comentarios.create(params[:comentario])
    redirect_to post_path(@post)

  end


  # DELETE /comentarios/1
  # DELETE /comentarios/1.xml
  def destroy
    @post = Post.find(params[:post_id])
    @comentario = @post.comentarios.create(params[:id])
    @comentario.destroy

    redirect_to post_path(@post)
  end
end
