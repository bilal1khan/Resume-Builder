Rails.application.routes.draw do
  root   'home#index'
  get    'sign_up' => 'registrations#new'
  post   'sign_up' => 'registrations#create'
  get    'edit'    => 'home#edit'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  resources :profiles , only: [:update]
  resources :educations , only: [:new]
end
