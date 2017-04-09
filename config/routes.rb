Rails.application.routes.draw do
  resources :games
  resources :users
  root 'login#loginask'

  # Login
   get 'login', to: "login#loginask"
   post 'login/validate'
   delete 'login/logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
