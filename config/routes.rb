Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
    root 'welcome#home'
    get 'about', to: 'welcome#about'
      
    resources :clients
      
    get 'signup', to: 'users#new'
    resources :users, except: [:new]
     
    get 'login', to:'sessions#new'
    
    post 'login', to: 'sessions#create'
    
    delete 'logout', to: 'sessions#destroy'
    
    resources :categories, except: [:destroy]
    
end