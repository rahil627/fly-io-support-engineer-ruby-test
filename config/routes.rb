Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # If you have a dedicated config/environments/staging.rb
  mount LetterOpenerWeb::Engine, at: "/mail"

  # Defines the root path route ("/")
  root "root#index" # route "/" to root controller's index function (empty, doesn't exist)
    # also renders the index view
  post "/", to: "root#handle_root_post" # route post requests on "/" to root controller's create function
    # send mail
    # if ok, go to /mail
  get '/mail', to: 'root#handle_mail_get'
    # mail view says "e-mail sent"
end
