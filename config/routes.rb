Rails.application.routes.draw do

  devise_for :users
  root to:'homes#index'
  get 'home/about' => 'homes#about'
  get '/search' => 'searchs#search'

  resources :users do
    resource :relationships, only:[:create, :destroy]
    get "followings" => "relationships#followings", as: "followings"
    get "followers" => "relationships#followers", as: "followers"
  end

  resources :items do
    resource :favorites, only:[:create, :destroy]
    resource :item_comments, only:[:create, :destroy]
  end

end
