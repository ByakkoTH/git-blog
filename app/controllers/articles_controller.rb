class ArticlesController < ApplicationController
    def index
        @article=Article.all
    end
    
    def show
        @article = Article.find(params[:id])
    end

    def new
        @article = Article.new
    end

    def edit
        @article = Article.find(params[:id])
    end

    def create
        @article=Article.new(article_params)
       if @article.save
        redirect_to @article
       else
        render "new"#me lleva a la plantilla de new
       end
    end

    def update
        @article = Article.finde(params[:id])
        if @article.update(article_params)
            redirect_to @article
        else
            render "edit"
        end
    end

    private
    def article_params
        params.require(:articles).permit(:title, :text)
    end
end
