Rails.application.routes.draw do
  root to: 'top#index'

  devise_for :users

  devise_for :organizers, controllers: {
  sessions:      'organizers/sessions',
  passwords:     'organizers/passwords',
  registrations: 'organizers/registrations'
  }
  resources :users, only: %i(show)
  resources :organizers, only: %i(show)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
