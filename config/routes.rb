class StaticConstraint
   def matches?(request)
      request.url.include?("_escaped_fragment_")
   end
end

EmberRailsBlog::Application.routes.draw do

  get '/', to: 'static#show', constraints: StaticConstraint.new
  get '*path', to: 'static#show', constraints: StaticConstraint.new

  root to: 'home#index'

  namespace :api do
    resources :users, only: [:index, :show]
    resources :posts, only: [:index, :show]
  end
end

