Rails.application.routes.draw do
  root 'url_shortener#index'
  post '/', to: 'url_shortener#create'
  get '/:short_url', to: 'url_shortener#redirect'
  resources :url_associations
end
