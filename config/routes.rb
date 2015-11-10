Rails.application.routes.draw do
  resources :posts do           #Se ubica a post como un recurso a enlazar
  	resources: comments
  end

  root "posts#index"          #Index es la pagina raiz de la app

  get '/about', to: 'pages#about' #Changing to dynamic page
end
