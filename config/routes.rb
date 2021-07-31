Rails.application.routes.draw do
#おおもとになるページ
  root to: "tasks#index"
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  #ユーザ登録時にURLの末尾を"signup"にする。（見栄え上の問題）
  get "signup", to: "users#new"
  post "signup", to: "sessions#new"
  #訂正前　get "users", to: "sessions#new"
  #訂正前　post "users", to: "sessions#new"
  resources :users, only:[:create]
  #↑訂正前　resources :users, only:[:show, :create]
  resources :tasks
end
