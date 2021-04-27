Rails.application.routes.draw do
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :routes
    end
  end
  namespace :api, defaults: {format: 'json'} do
    namespace :v2 do
      resources :routes
    end
  end
end
