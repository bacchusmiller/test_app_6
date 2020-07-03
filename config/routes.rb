Rails.application.routes.draw do
  get 'mdic/new' => 'mdic#new'
  get 'mdic/create' => 'mdic#create'
  get 'mdic/update' => 'mdic#update'
  get 'mdic/edit' => 'mdic#edit'
  get 'mdic/destroy' => 'mdic#destroy'
  get 'mdic/index' => 'mdic#index'
  get 'mdic/show' => 'mdic#show'
  
  resources :tasks
  
  root 'pages#home'
  get 'about', to: 'pages#about'


end
