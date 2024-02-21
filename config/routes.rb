Rails.application.routes.draw do
  resources :restaurants do
    # /restaurants/:id/reviews/new
    resources :reviews, only: [:new, :create]
    
    # qd on veut un index filtré avec /restaurants/top
    collection do
      get :top
    end
    # qd on veut l'id de la ressources dans l'url
    member do
      get :chef
    end
  end

  resources :reviews, only: [:destroy]
end
