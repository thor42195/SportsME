Rails.application.routes.draw do

  devise_for :users
  authenticated :user do
    root :to => "events#index"
  end

  authenticated :organizer do
    root :to => "events#manage"
  end

  devise_for :organizers, controllers: {
  sessions:      'organizers/sessions',
  passwords:     'organizers/passwords',
  registrations: 'organizers/registrations'
  }

  root to: 'top#index'

  resources :users do
    collection do
      post :confirm
    end
  end
  get '/users/interests/:id', to:'users#interests'
  get '/users/bookmarks/:id', to:'users#bookmarks'
  get '/users/paticipants/:id', to:'users#paticipants'
  get '/users/followers/:id', to:'users#followers'

  resources :organizers do
    collection do
      post :confirm
    end
  end

  resources :events do
    resources :comments
    collection do
      post :confirm
    end
  end

  get 'manage/events/:id', to:'events#manage'
  get 'search', to:'events#search'

  resources :interests, only: [:create, :destroy] # user can keep event as interests
  resources :bookmarks, only: [:create, :destroy]
  resources :paticipants, only: [:create, :destroy]
  resources :reactions, only: [:index, :create, :destroy]

  resources :chatusers do
    resources :chatmessages
  end
end
