Rails.application.routes.draw do
  resources :producttypes
  resources :productos
  resources :types
  resources :customers
  resources :reservations
  resources :sales
  devise_for :users, controllers: {registrations: "registrations" }
  resources :users, :only => [:destroy]
get 'welcome/index'

get 'principal', to: 'welcome#index'

get 'categorias/index'

get'categorias', to:'categorias#index'

get 'consultas/index'

get'consultas', to:'consultas#index'

get 'ventas/index'

get'ventas', to:'ventas#index'

get 'mantencion/index'

get'mantencion', to:'mantencion#index'

get 'tipos/index'

get'tipos', to:'tipos#index'

get 'ofertas/index'

get'ofertas', to:'ofertas#index'

get 'clientes/index'

get'clientes', to:'clientes#index'

get 'reservas/index'

get'reservas', to:'reservas#index'

post 'eleccion/index'
post'eleccion', to:'eleccion#index'

match ':controller(/:action(/:id))', :via => [:get, :post]
	resources :products
=begin
  	get "/products"
  	post "/products"
  	delete "/products"
  	get "/products/:id"
  	get "/products/new"
  	get "/products/:id/edit"
  	patch "/products/:id"
  	put "/products/:id"
=end

	resources :categories
=begin
  	get "/categories"
  	post "/categories"
  	delete "/categories"
  	get "/categories/:id"
  	get "/categories/new"
  	get "/categories/:id/edit"
  	patch "/categories/:id"
  	put "/categories/:id"
=end
  #get 'welcome/index'
  #get 'principal', to: 'welcome#index' 
 
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
 