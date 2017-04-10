Rails.application.routes.draw do
  resources :users
  delete 'logout' => 'users#logout'
  resources :messages
end
