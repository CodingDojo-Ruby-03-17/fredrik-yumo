Rails.application.routes.draw do
  root 'rpg#index'
  post 'farm' => 'rpg#farm'
  post 'cave' => 'rpg#cave'
  post 'house' => 'rpg#house'
  post 'casino' => 'rpg#casino'
  get 'reset' => 'rpg#reset'
end
