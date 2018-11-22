Rails.application.routes.draw do
  root to: 'top#index'

  devise_for :users
  resources :users do
    collection do
      post :confirm
    end
  end
  get '/users/interests/:id', to:'users#interests'
  get '/users/bookmarks/:id', to:'users#bookmarks'
  get '/users/paticipants/:id', to:'users#paticipants'
  get '/users/followers/:id', to:'users#followers'

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
  resources :interests, only: [:create, :destroy] # user can keep event as interests
  resources :bookmarks, only: [:create, :destroy]
  resources :paticipants, only: [:create, :destroy]
  resources :reactions, only: [:index, :create]
  resources :chat, only: [:create, :show]

end
