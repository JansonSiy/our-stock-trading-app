Rails.application.routes.draw do
  # visit https://github.com/heartcombo/devise to learn more
  devise_for :users, controllers: { sessions: 'users/sessions' }

  # my root is user index
  root to: "users#index"

  # Resource routing allows you to quickly declare all of the common routes for a given resourceful controller.
  # A single call to resources can declare all of the necessary routes for your index, show, new, edit, create, update, and destroy actions.
  resources :users
end