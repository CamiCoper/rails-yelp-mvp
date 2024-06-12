Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Define la ruta raíz de la aplicación para mostrar la lista de restaurantes
  root "restaurants#index"

  # Define rutas RESTful para el recurso `restaurants`, limitando a index, show, new y create
  resources :restaurants, only: [:index, :show, :new, :create] do
    # Define rutas anidadas para el recurso `reviews`, limitando a new y create
    resources :reviews, only: [:new, :create]
  end
end
