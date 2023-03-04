Rails.application.routes.draw do
  resources :topics do
    resources :posts, only: [:new, :create]
  end
end
