Rails.application.routes.draw do
  resources :investigationcauses
  resources :investigationactions
  resources :investigationcosts
  resources :investigationequipments
  resources :investigationinjurytypes
  resources :investigationinjurylocations
  resources :investigationclassifications
  resources :investigations
  resources :causes
  resources :injurytypes
  resources :injurylocations
  resources :subclassifications
  resources :classifications
  resources :departments
  resources :incidentworkflows
  resources :workflowtemplates
  resources :action_requireds
  resources :victims
  resources :witnesses
  get 'privacy/index'
  resources :incidentsubcategories
  resources :otps
  get 'dashboards/index'
  get 'analytics/index'
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  resources :locations
  resources :statuses
  resources :incidenstatuses
  resources :incidentstatuses
  namespace :api, defaults: {format: 'json'} do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
      resources :incidents do
        resources :incidentfollowups
        collection do
          post 'createjson'
        end
      end
      resources :incidentattachments
      resources :countries
      resources :incidentcategories
      resources :incidentfollowups
      post '/otp', to: 'sessions#otp'
      post '/otplogin', to: 'sessions#otplogin'
    end
  end
  devise_for :users, :skip => [:registrations] do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :offenders
  resources :offendercategories
  resources :incidentfollowups
  resources :incidentattachments
  resources :countries
  resources :incidents
  resources :incidentcategories
  resources :users
  root to: 'home#index'
end
