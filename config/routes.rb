Rails.application.routes.draw do
  devise_for :users
  resources :tweets
  resources :users
  root 'tweets#top'
  get 'tags/:id' => 'tags#show', as: 'tag'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
