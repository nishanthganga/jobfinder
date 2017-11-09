Rails.application.routes.draw do
  root 'jobs#home'
  get 'jobs/new'
  post 'jobs/create'
  get 'jobs/search'
  post 'jobs/dynamic_search'
  get 'jobs/on_twitter(/:id)', to: 'jobs#on_twitter', as: :jobs_on_twitter

  namespace 'api' do
    namespace 'v1' do
      resources :jobs
    end
  end
  
end
