Rails.application.routes.draw do
  root to: 'top#index'

  devise_for :users
  resources :users do
    collection do
      post :confirm
    end
  end

  devise_for :organizers, controllers: {
  sessions:      'organizers/sessions',
  passwords:     'organizers/passwords',
  registrations: 'organizers/registrations'
  }
  resources :organizers do
    collection do
      post :confirm
    end
  end

  resources :events do
    collection do
      post :confirm
    end
  end
  get '/events/manage', to:'events#manage' #all events for organizers to manage

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
