require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'
  
  post '/url.json', to: 'urls#url', defaults: {format: :json}
  
  get '/top.json', to: 'urls#top100', defaults: {format: :json}

  get '/:encoded_url', to: 'urls#show', defaults: {format: :json}

end
