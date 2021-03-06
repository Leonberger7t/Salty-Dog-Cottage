Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "welcome#home", as: "home_page"

  root "home#index"

  get "/information" =>  "information#show", as: "information"

  get  "/photos" =>  "photos#show", as: "photo"

  get  "/calendar" =>  "calendar#show", as: "calendar"

  get "/request/:id"     =>    'unicorns#edit'
  resources :users
  resources :requests

end
