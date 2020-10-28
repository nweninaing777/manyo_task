Rails.application.routes.draw do
<<<<<<< HEAD
  root to: 'sessions#new'
 namespace :admin do
   resources :users
 end
 resources :tasks
 resources :sessions
 resources :users
=======
  resources :tasks
  resources :users
  resources :sessions
  namespace :admin do
    resources :users, only: [:index, :show, :new, :create, :destroy, :edit, :update] do
    end
  end
    root to: 'sessions#new'
>>>>>>> 3bbcd2869510d89227b1ebea83385ca5010afaae
end
