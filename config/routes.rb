Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bookmarks, only: [:show, :index, :create] do
  resources :lists, only: [:show]
  end
end
