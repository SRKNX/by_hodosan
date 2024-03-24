Rails.application.routes.draw do
  resources :occupations
  resources :regulations
  resources :calenders
  devise_for :admins, controllers: {
        registration: 'admins/registrations',
        sessions: 'admins/sessions'
      }
  devise_for :users, controllers: {
        registration: 'users/registrations',
        sessions: 'users/sessions'
      }

  resources :rooms
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "rooms#index"

end
