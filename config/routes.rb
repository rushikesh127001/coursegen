Rails.application.routes.draw do


  root "welcome#about"
  get 'raksha',to: 'rakshakn#display'
  get 'login',to: 'session#new'
  post 'login',to: 'session#create'
  delete 'logout', to: 'session#destroy'
  
  resources :courses, only: [:new, :create, :show, :index] do
    resources :steps, only: [:show, :update], controller: 'course/steps'
  end
end
