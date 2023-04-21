class PostsController < ApplicationController
  def index
    @posts = Post.order(created_at: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      redirect_to posts_path, flash: { success: "ポストを作成しました" }
    else
      flash.now[:danger] = "ポストを作成できませんでした"
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def destroy
    @post = current_user.posts.find(params[:id])
    @post.destroy!
    redirect_to posts_path, flash: { success: "ポストを削除しました" }
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
