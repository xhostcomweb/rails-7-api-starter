Rails.application.routes.draw do
  # Import constraints
  require 'constraints/auth_constraint'

  # Devise routes
  devise_for :users, defaults: { format: :json }

  scope '/', module: :web do
    root 'home#index'
    get '/health', to: 'healtz#index'
  end

  # API endpoints
  scope '/api', module: :api, defaults: { format: :json }, constraints: AuthConstraint.new(token: 'OllBS57MeAW041dgR7xolpZaiO87kjnMVVK3qrtgtTbcBolB7K3TugZBuM6') do
     # Version 1 of API
    scope '/v1', module: :v1 do

      # REST endpoints for news
      resources :news
    end
  end
end
