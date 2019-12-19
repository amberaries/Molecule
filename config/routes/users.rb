resources :users, only: [:show, :new, :create, :edit, :update]
resources :sessions, only: [:new, :create, :destroy]

get 'signup', to: 'users#new', as: 'signup'
get 'login', to: 'sessions#new', as: 'login'
get 'logout', to: 'sessions#destroy', as: 'logout'
