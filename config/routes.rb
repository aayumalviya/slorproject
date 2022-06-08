Rails.application.routes.draw do
  get 'contents/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "posts#index"
  get 'posts/index'
  resources  :posts do 
    resources :contents
  end 
end
