Rails.application.routes.draw do
    mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
    get 'posts/index'
    root 'posts#index'
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'
    get 'signup', to: 'users#new'
    post 'signup', to: 'users#create'
    resources :users, only: %i[new create]
    resource :password_change, only: %i[show update]
    
    resources :posts do
      resource :like, only: %i[create destroy], module: :posts
      resources :comments, only: %i[create destroy], module: :posts
      collection do
        get :tag, to: 'posts#tag_search', module: :posts
      end
    end
  
    namespace :mypage do
      root 'profile#show'
      resource :profile, only: %i[show update] do
        resource :avatar, only: %i[destroy], module: :profiles
      end
      collection do
        get :relationship, to: 'users#relationship'
        get :tag, to: 'plofiles#tag_search'
      end
    end

    namespace :kitchengarden do
        root 'home#index'
        resources :vegetables
        collection do
            get :relationship, to: 'relationship'
          end
        resources :diary
      end
  end
  