Rails.application.routes.draw do
  # get 'cocktails', to: "cocktails#index"
  # get 'cocktails/new', to: "cocktails#new"
  # # get 'cocktails/index'
  # get 'cocktails/new'
  # get 'cocktails/destroy'
  # get 'cocktails/edit'
  root to: 'cocktails#index'

  resources :cocktails do
    resources :doses, only: [:create, :new]
  end
  resources :doses, only: [:destroy]
  # resources :doses, only: [:create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
