Rails.application.routes.draw do

  #resources :routes, defaults: {format: 'json'}


  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :routes
    end
  end
end
