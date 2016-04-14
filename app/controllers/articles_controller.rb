class ArticlesController < ApplicationController
  def index
  end
  def create
    @magazine = Magazine.find(params[:magazine_id])
    @article = @magazine.articles.create(article_params)
    redirect_to magazine_path(@magazine)
  end
 def destroy
 @magazine = Magazine.find(params[:magazine_id])
 @article = @magazine.articles.find(params[:id])
 @article.destroy
 redirect_to magazine_path(@magazine)
 end
 def show

 end
  private
    def article_params
      params.require(:article).permit(:title, :body, :author)
    end
end
