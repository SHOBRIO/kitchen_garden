Rails.application.routes.draw do
  get 'static_pages/top'
  root to: 'static_pages#top'
  
  get "posts/index"

  get "login", to: "user_sessions#new"
  post "login", to: "user_sessions#create"
  delete "logout", to: "user_sessions#destroy"

  get "signup", to: "users#new"
  post "signup", to: "users#create"

  resources :users, only: %i[new create]
  resources :relationships, only: %i[create destroy] #フォロー
  resources :likes, only: %i[:create, :destroy] #いいね
  resources :planting_vegetable_searches, only: %i[index show new create], param: :vegetable_id #育てる野菜の検索

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
    resources :kitchen_gardens, only: %i[show] #マイページトップ（野菜管理画面）
    resources :plantings, only: %i[show update destroy] do # 野菜詳細
      resource :sowing_day, only: %i[update] #種まき日
      resource :seedling_day, only: %i[update] #芽が出た日
      resource :planting_day, only: %i[update] #苗を植え替えた日
    end
    resources :diaries, only: %i[index show new edit create update destroy] #日誌
    resources :notifications, only: %i[index] #通知
    resource :notification_setting, only: %i[show update] #通知設定
    resource :profile, only: %i[show update] do
      resource :avatar, only: %i[destroy], module: :profiles #profile/avatar/DELETE
    end
  end
  resources :password_resets, only: %i[new create edit update] #リセットパスワード

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
