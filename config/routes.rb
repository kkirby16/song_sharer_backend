Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do #gives us version control for multiple apis we might want to have
      resources :songs, only: [:index, :create, :show] #since building vertically only going to focus on index for now.
      resources :genres, only: [:index]
    end
  end
end
