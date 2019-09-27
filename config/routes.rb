Rails.application.routes.draw do
  resources :trips, defaults: {format: :json}
end
