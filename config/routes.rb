Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions',
                                    registrations: 'users/registrations',
                                    passwords: 'users/passwords' }

  root 'application#index'

  resources :groups
  resources :reports

  get '/non_authorized', to: 'application#non_authorized'
end
