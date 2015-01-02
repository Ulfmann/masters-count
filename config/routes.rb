Rails.application.routes.draw do
  root to: 'matches#index'

  resources :legs

  resources :matches

  resources :users

end
