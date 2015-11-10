class PostsController < ApplicationController
	def index
		@post = Post.all.order('created_at DESC') #Mostrar post por fecha de creacion descendiente
	end

	def new
	end

	def create
		@post = Post.new(post_params) #Creando nuevo objeto post con sus respectivos parametros
		@post.save

		redirect_to @post
	end


	def show
		@post = Post.find(params[:id]) #Encontrar por parametro id
		
	end

	private

	def post_params
		params.require(:post).permit(:title, :body)         #Parametros de post 
	end
end
