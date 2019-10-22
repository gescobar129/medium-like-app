class CommentsController < ApplicationController

    def new 
        @comment = Comment.new
    end

    def create 
        byebug
        @article = Article.find(params[:article_id])

        @comment = @article.comments.create(comment_params)
        if @comment.valid? 
            @comment.save
        redirect_to @article
        end
    end

    private 
    
    def comment_params 
        params.require(:comment).permit(:title, :body)
    end

end
