Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do #gives us version control for multiple apis we might want to have
      resources :songs, only: [:index, :create, :show] do
        member do
          patch "/api/v1/add_like_to_song/:id", to: "songs#update_for_adding_like_to_song"     #since building vertically only going to focus on index for now.
          patch "/api/v1/delete_like_from_song/:id", to: "songs#update_for_deleting_like_from_song"
        end
        resources :genres, only: [:index]
      end
    end
  end
end
