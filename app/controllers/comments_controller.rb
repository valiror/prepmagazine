class CommentsController < ApplicationController
  def index
    @article = Article.find(params[:article_id])
    @comments = Comment.all
  end
  def new 
  @article = Article.find(params[:article_id])
  @comment = @article.comments.new
  end
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.new(comment_params)
    redirect_to article_path(@article)
  end
 def destroy
 @article = Article.find(params[:article_id])
 @comment = @article.comments.find(params[:id])
 @comment.destroy
 redirect_to article_path(@article)
 end
  private
    def comment_params
      params.require(:comment).permit(:commenter, :comment)
    end
end
