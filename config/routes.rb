Rails.application.routes.draw do
root 'sessions#home'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  
  get '/auth/facebook/callback' => 'sessions#omniauth_create'

  get '/admin' => 'staffs#admin'

 resources :clients, except: [:edit, :update, :destroy]
 resources :staffs, only: [:index, :show]
 resources :appointments, only: [:new, :create, :edit, :update]

 resources :services do 
    resources :appointments, except: [:new, :create, :edit, :update]
  end

end

