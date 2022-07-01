Rails.application.routes.draw do
  root 'pages#index'

  namespace :api do
    namespace :v1 do
      resources :airlines, param: :slug
      rescources :reviews, only [:create, :destroy]
    end
  end

  #routes requests that aren't for existing paths back to index path
  get '*path', to: 'pages#index', via: :all
end
