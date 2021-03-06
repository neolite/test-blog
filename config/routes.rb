Rails.application.routes.draw do
  
  root 'posts#index'
  
  resources :categories
  resources :posts do 
    resources :comments
  end
  
  resources :comments do
    post :approve, on: :member
    post :decline, on: :member
  end  
  
  get 'profile' => 'profile#index', as: :user_profile
  get 'profile/edit', as: :user_profile_edit
  post 'profile/update'
  post 'profile/update_password'
  
  devise_for :users,  controllers: {
        registrations: 'registrations'
  }
end
