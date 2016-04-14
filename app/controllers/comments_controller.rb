class CommentsController < ApplicationController
def index

   @comments = Comment.all
 
  end
  def new
  @comment = Comment.new
  end
  def create 
    params.permit!
    @comment = Comment.new(params[:comment])
    @comment.article_id= params[:comment][:article_id]
    article = Article.find(params[:comment][:article_id])
    magazine_id = article.magazine_id
    if @comment.save
      redirect_to magazine_path(id: magazine_id)
    else
      render 'new'
    end
  end
 def destroy  
 @comment = Comment.find(params[:id])
 @comment.destroy
 redirect_to comments_path
 end
 def show
  @article = Article.find(params[:article_id])
  @comments = @article.comments  
 end
  private
    def comment_params
      params.require(:comment).permit(:commenter, :comment)
    end
end
