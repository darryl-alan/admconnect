Rails.application.routes.draw do  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "chat#index"
  get "login", to: "login#index"
  post "login", to: "login#login"
  delete "logout", to: "login#logout"
  post "message", to: "messages#create"

  mount ActionCable.server, at: '/cable'
end
