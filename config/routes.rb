Rails.application.routes.draw do
  resources :lists

  get 'lists/new'
  get 'lists/show'
  get 'lists/edit'
  get 'top' => 'homes#top'
  post 'lists' => 'lists#create'
  get 'lists' => 'lists#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
