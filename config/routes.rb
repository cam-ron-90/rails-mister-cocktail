Rails.application.routes.draw do
  root to: 'cocktails#index'

  resources :cocktails do
    resources :doses, only: [ :new, :create ]
  end

  resources :doses, only: [:destroy]

  # get 'cocktails/index'
  # get 'cocktails/show'
  # get 'cocktails/new'
  # get 'cocktails/create'

  # get 'doses/new'
  # get 'doses/create'
  # delete 'doses/delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
