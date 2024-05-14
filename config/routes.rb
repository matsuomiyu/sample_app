Rails.application.routes.draw do
  resources :lists

  get 'lists/new'
  get 'lists/edit'
  get 'top' => 'homes#top'
  post 'lists' => 'lists#create'
  get 'lists' => 'lists#index'
  get 'lists/:id' => 'lists#show', as: 'list_path'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
