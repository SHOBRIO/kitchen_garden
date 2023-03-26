class Posts::CommentsController < ApplicationController
  def create
    @comment = current_user.comments.new(comment_params)
    if @comment.save
      redirect_to post_path(@comment.post), success: "コメントを作りました"
    else
      @post = @comment.post
      flash.now[:danger] = "コメントを作成できませんでした"
      render "posts/show"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content).merge(post_id: params[:post_id])
  end
end
