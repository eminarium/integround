Rails.application.routes.draw do
  scope :admin do
    resources :products
    resources :categories
  end

  get "products", to: "products#public_index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
