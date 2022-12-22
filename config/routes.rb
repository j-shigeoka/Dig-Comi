Rails.application.routes.draw do
  
  get "search" => "searches#search"
  
  devise_for :users,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  scope module: :public do
    root :to => "homes#top"
    
    post 'guest_sign_in', to: 'users#guest_sign_in'
    
    resources :comics do
      resource :likes, only: [:create, :destroy]
      resources :comments, only: [:create, :destroy]
      get   'page'
    end
    
    resources :genres, only: [:show]
    
    get   'users/my_page/:id' => "users#show", as: "user_my_page"
    
    get   'users/information/edit' => 'users#edit'
    patch 'users/information' => 'users#update'
    get   'users/unsubscribe' => 'users#unsubscribe'
    patch 'users/withdraw' => 'users#withdraw'
  end
  
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }
  
  namespace :admin do
    resources :comics, except: [:new, :create] do
      get   'page'
    end
    
    resources :genres, except: [:new, :show]
    
    resources :users,  except: [:new, :create, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
