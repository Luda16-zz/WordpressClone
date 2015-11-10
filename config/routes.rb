Rails.application.routes.draw do
  resources :posts            #Se ubica a post como un recurso a enlazar

  root "posts#index"          #Index es la pagina raiz de la app
end
