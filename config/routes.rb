Rails.application.routes.draw do
  devise_for :users
  resources :items do
    post 'done' 
  end

  resources :lists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'done' => 'items#done'
end
