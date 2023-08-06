Rails.application.routes.draw do

  #管理者
  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
  }
  devise_scope :admin do
    get '/admins/sign_out' => 'devise/sessions#destroy'
  end

  #ユーザー
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root to: "homes#top"

end
