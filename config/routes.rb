Rails.application.routes.draw do

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
    end
  end

end
