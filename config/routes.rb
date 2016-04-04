Rails.application.routes.draw do

  devise_for :users
  # our access to Angular
  root "application#index"

  # our api route
  namespace :api, defaults:{format: :json} do
    namespace :v1 do
      resources :hikes do
        resources :comments, only: [:show, :create, :destroy]

        member do
          put '/like' => 'hikes#like'
          put '/dislike' => 'hikes#dislike'
        end

      end

      resources :groups
    end
  end

end
