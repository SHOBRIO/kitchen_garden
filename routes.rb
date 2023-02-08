Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  get "posts/index"
  root "posts#index"

  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  get "signup", to: "users#new"
  post "signup", to: "users#create"

  resources :users, only: %i[new create]
  resources :relationships, only: %i[create destroy] #フォロー
  resources :likes, only: %i[:create, :destroy] #いいね
  resource :growing_vegetable_search, only: %i[show new create] #育てる野菜の検索

  resources :posts do
    collection do
      get :relationships
      get :tag, to: 'posts#tag_search'
    end
    resources :comments, only: %i[create destroy], module: :posts
  end

  resources :notifications, only: %i[index show]
  namespace :notifications do
    resource :all_reads, only: %i[create] #すべて既読
  end

  namespace :mypage do
    root "kitchen_gardens#show"
    resources :kitchen_gardens, only: %i[show] #マイページトップ（野菜管理画面）
    resources :growing_vegetables, only: %i[show update destroy] do # 野菜詳細
      resource: sowing_day, only: %i[update] #種まき日
      resource: seedling_day, only: %i[update] #芽が出た日
      resource: planting_day, only: %i[update] #苗を植え替えた日
    end
    resources :diaries, only: %i[index show new create update destroy] #日誌
    resources :notifications, only: %i[index] #通知
    resource :notification_setting, only: %i[show update] #通知設定
    resource :profile, only: %i[show update] do
      resource :avatar, only: %i[destroy], module: :profiles #profile/avatar/DELETE
    end
  end

  resources :password_resets, only: %i[new create edit update] #リセットパスワード

end
