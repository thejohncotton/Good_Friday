Rails.application.routes.draw do
  root 'static_pages#home'
  get  "/admin123456" => 'static_pages#admin'
  resources :posts
  namespace :api do
    namespace :v1 do
      resources :posts
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
