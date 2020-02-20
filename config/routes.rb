Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'flats#index'
  # get '/flats', to: 'flats#index', as: :flats
  # get '/flats/new', to: 'flats#new', as: :new_flat
  # get '/flats/:id', to: 'flats#show', as: :flat
  # post '/flats', to: 'flats#create'
  # get '/flats/:id/edit', to: 'flats#edit', as: :edit_flat
  # patch '/flats/:id', to: 'flats#update'
  # delete 'flats/:id', to: 'flats#destroy'
  resources :flats do
    resources :reviews, only: [:create]
    resources :images, only: [:create]
  end
end
