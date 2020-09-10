Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  # pages
  get '/success', to: 'pages#success'

  # user
  resources :user, only: [:create]

  # route 404 to index
  get '*path' => redirect('/')

end
