Rails.application.routes.draw do
  resources :users, :messages, :tasks
end
