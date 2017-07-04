class ArticlesController < ApplicationController
load_and_authorize_resource
	before_action :set_article, only: [:edit, :update, :destroy, :show]
  
  def index
  	@articles = Article.all
  end
	def new
		@article = Article.new 
	end

	def create
		@article = Article.new(article_params)
		if @article.save
			redirect_to articles_path, notice: "article saved successfully"
		else
	    render :new
		end
	end
	 
	def edit
		
	end
  def show
  	
  end

	def update
		if @article.update(article_params)
			redirect_to article_path(@article), notice: "article update successfully"
    else
      render :edit
    end

	end

	def destroy
		
		if @article.destroy
			redirect_to articles_path, notice: "article deleted successfully"
		else
			redirect_to articles_path
		end

	end



	private

		def article_params
			params.require(:article).permit(:name, :published, :description, :editor_id)
		end

		def set_article
			@article = Article.find(params[:id])
		end


end
