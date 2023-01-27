Rails.application.routes.draw do
  root 'homes#top'
  resources :users, only:[:index, :edit,]
  resources :books, only:[:new, :index, :show, :edit]
  get '/top'=>'homes#top'
  get '/about'=>'homes#about', as:'about'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
