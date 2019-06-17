


Rails.application.routes.draw do
  
  get 'todos/index'
  get 'todos/show'
  

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :todos do
    resources :progresations, only: [:update]
  end



  root to: "todos#index"
  
end