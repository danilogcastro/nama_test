Rails.application.routes.draw do
  root to: 'pages#home'
  resources :sales, only: [:index, :new, :create]
end
