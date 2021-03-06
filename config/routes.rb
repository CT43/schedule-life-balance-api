Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        get "/schedule/:id", to: "schedules#show"
        get "/activity/:q", to: "activities#index"
        resources :users
        resources :categories
        resources :schedules
        resources :activities
      end
    end
  end
end
