Rails.application.routes.draw do
  resources :pins
  devise_for :users
  
  root 'home#index'
  #get 'home/index'
  get 'home/about'

    
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


#devise_for :users
devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
end

 
 #post "/" => 'home#index'

 #devise_for :users, controllers: { registrations: "registrations" }



end
