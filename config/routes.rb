Rails.application.routes.draw do
  root 'url_associations#index'
  post '/', to: 'url_associations#create'
  get '/:short_url', to: 'url_associations#redirect'
  resources :url_associations
end
