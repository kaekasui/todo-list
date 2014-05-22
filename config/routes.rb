Todo::Application.routes.draw do
  root 'tasks#index'
  resources :tasks, except: [:show]
end
