Rails.application.routes.draw do
  
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
    get 'users', to: 'users/registrations#new'
    get 'users/password', to: 'users/passwords#new'
  end
  devise_for :users
  
  get 'home/about'
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'posts#index'
end
