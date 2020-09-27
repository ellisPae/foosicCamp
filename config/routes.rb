Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do

    resources :users, only: %w(index create show) do 
      resources :tracks, only: %w(index create)
      resources :albums, only: %w(index create)

      # user/user_id/tracks/track_id
      # user/user_id/albums/album_id/
    end

    resource :session, only: %w(create destroy show)
    resources :tracks, only: %w(index show edit update destroy)
    # tracks/
    resources :albums, only: %w(index show edit update destroy)
  end

  root "static_pages#root"
end

