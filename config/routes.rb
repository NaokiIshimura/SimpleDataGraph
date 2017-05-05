Rails.application.routes.draw do

  get 'static_pages/about'

  get 'static_pages/how_to_use'

  resources :auth_tokens
  resources :graph_data
  get 'member_pages/graph'
  get 'member_pages/page2'
  get 'member_pages/page3'
  get 'member_pages/page4'
  get 'member_pages/page5'
  get 'member_pages/list'
  get 'member_pages/token'
  get 'member_pages/refresh_token'

  get 'home/show'
  get 'home/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  post 'data' => 'receive_data#post'
end
