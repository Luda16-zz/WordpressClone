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

	def edit
		@post = Post.find(params[:id])
		
	end

	def update
		@post = Post.find(params[:id])

		if @post.update(params[:post].permit(:title, :body))
			redirect_to @post
		else
			render 'edit'
		end
	
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to root_path
	end

	private

	def post_params
		params.require(:post).permit(:title, :body)         #Parametros de post 
	end
end
