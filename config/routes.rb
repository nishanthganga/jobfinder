Rails.application.routes.draw do
  root 'jobs#home'
  get 'jobs/new'
  post 'jobs/create'
  get 'jobs/search'
  post 'jobs/dynamic_search'
  get 'jobs/on_twitter'

  get 'twitter_jobs/rails'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
