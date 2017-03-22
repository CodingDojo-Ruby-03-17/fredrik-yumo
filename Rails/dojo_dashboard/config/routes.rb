Rails.application.routes.draw do
  get 'dojos' => 'dojo#index'
  get 'dojos/new' => 'dojo#new'
  post 'dojos' => 'dojo#create'
  get 'dojos/:id' => 'dojo#show'
  get 'dojos/:id/edit' => 'dojo#edit'
  patch 'dojos/:id' => 'dojo#update'
  delete 'dojos/:id' => 'dojo#destroy'
end
