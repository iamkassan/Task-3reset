Rails.application.routes.draw do
  get 'users' => 'users#index'
  get 'users/show'
  get 'users/edit'
  devise_for :users
  resources :books
  root to: 'homes#top'
  get "/homes/about" => "homes#about", as: "about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
