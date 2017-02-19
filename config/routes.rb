Rails.application.routes.draw do
  devise_for :users
  # get '/patients/:id' , to: 'items#show', as: 'patients'
  get '/items/new/:id', to: 'items#new',  as: 'new_item'
  get '/list/:id', to: 'items#index',  as: 'items'
  post 'list/:id' , to: 'items#create'

  get 'done/:list_id,'

  resources :items , except: [:new,:index]
  resources :lists , except: [:show]
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'done' => 'items#done'

end
