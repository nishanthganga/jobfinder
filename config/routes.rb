Rails.application.routes.draw do
  root 'jobs#home'
  get 'jobs/new'
  get 'jobs/create'
  get 'jobs/search'
  get 'jobs/on_twitter'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
