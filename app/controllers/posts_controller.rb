class PostsController < ApplicationController
	def index
		@post = Post.all.order('created_at DESC') #Mostrar post por fecha de creacion descendiente
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params) 	#Creando nuevo objeto post con sus respectivos parametros
		
		if @post.save					#Si se guarda el post, redirigir al post mismo, de lo contrario ir a crear uno nuevo
			redirect_to @post
		else
			render 'new'
		end

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
