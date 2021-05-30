Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      post 'authenticate', to: 'authentication#create'
      resources :users, only: [:index, :create, :destroy, :show]
      resources :teachers, only: [:index, :create, :destroy, :show]
      resources :students, only: [:index, :create, :destroy, :show]
      resources :parents, only: [:index, :create, :destroy, :show]
    end
  end
end
