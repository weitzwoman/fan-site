Rails.application.routes.draw do
  resources :books do
    resources :reviews
  end
end
