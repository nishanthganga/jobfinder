Rails.application.routes.draw do
  devise_for :admins, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}
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
