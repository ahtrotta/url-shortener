Rails.application.routes.draw do
  root 'url_shortener#index'
  post '/', to: 'url_shortener#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
