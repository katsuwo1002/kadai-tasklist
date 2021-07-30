Rails.application.routes.draw do
#おおもとになるページ
  root to: "tasks#index"
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  #ユーザ登録時にURLの末尾を"signup"にする。（見栄え上の問題）
  get "signup", to: "users#new"
  post "signup", to: "sessions#new"
  #get "users", to: "sessions#new"
  #post "users", to: "sessions#new"
  resources :users, only:[:show, :create]
  resources :tasks
end
