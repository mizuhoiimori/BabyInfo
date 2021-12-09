Rails.application.routes.draw do
  get 'users/show'
  get 'users/index'
  get 'users/edit'
  get 'users/update'
  devise_for :users
  root 'homes#index'
  get 'home/about' => 'homes#about'

  resources :users do
  end

  resources :items do
  end

end
