Rails.application.routes.draw do
  resources :articles
  resources :authors
  root 'top#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  mount Blorgh::Engine => "/blorgh"
end
