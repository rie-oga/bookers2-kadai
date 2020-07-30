Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'users/:id#index'  #←? ログイン後、マイページに行きたい リダイレクトされること自体は、devise自体の元々の設定

  get 'top' => 'books#top' #topアクションを作る
  root :to => 'books#top' #topページのURLを”/”のみにする



end
