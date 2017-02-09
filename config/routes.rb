Rails.application.routes.draw do
  resources :books do
    resources :reviews
  end
  root "books#index"
  get "/search", to: 'books#search'
end
