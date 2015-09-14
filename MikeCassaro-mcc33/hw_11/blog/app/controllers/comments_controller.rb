class CommentsController < ApplicationController
  http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy

  def create
    @article = Article.find(params[:article_id]) #Empty instance variable set equal to locating an article by it's id in the db
    @comment = @article.comments.create(comment_params) #Empty comment instance set equal to the above defined @article.
    #Then creates a comment with passed in comment params
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
      params.require(:comment).permit(:commenter, :body) #requires a comment, permits changing the commenter and text
    end

end
