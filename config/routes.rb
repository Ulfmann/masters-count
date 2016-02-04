Rails.application.routes.draw do
  root to: 'stats#index'

  resources :legs

  resources :matches

  resources :users

end
