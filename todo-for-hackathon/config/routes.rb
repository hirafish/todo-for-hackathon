Rails.application.routes.draw do
  get 'members/index'
  get 'members/new' => 'members#new'
  post 'members/create' => 'members#create'
  get 'user_page/todo'
  get 'user_page/user_top'
  get '/' => 'home#top'
  get 'members/:id/edit' => 'members#edit'
  post 'members/:id/update' => 'members#update'
  post 'members/:id/destroy' => 'members#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
