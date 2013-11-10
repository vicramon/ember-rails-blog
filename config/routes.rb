EmberRailsBlog::Application.routes.draw do
  root to: 'home#index'

  namespace :api do
    resources :posts, only: [:index, :show]
  end
end
