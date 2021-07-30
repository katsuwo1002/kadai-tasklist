Rails.application.routes.draw do

  root to: "tasks#index"
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  #ユーザ登録時にURLの末尾を"signup"にする。（見栄え上の問題）
  get "signup", to: "users#new"
  #CRUD操作の中で下記の３つだけを実装する。
  resources :users, only: [:index, :show, :create]
  resources :tasks
end
