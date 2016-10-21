Rails.application.routes.draw do
  get 'welcome/index'
  resources :articles do
  	resources :comments
  end
  root 'welcome#index'


  # New a
  get 'articles/new' => 'articles#new'

  # list các a
  get 'articles' => 'articles#index'
end
