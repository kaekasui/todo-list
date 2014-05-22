Todo::Application.routes.draw do
  root 'home#index'
  resources :tasks, except: [:show]
  get '/auth/:provider/callback', to: 'sessions#callback'
  get '/logout' => 'sessions#destroy', as: :logout
end
