Rails.application.routes.draw do

  root "welcome#about"
  get 'raksha',to: 'rakshakn#display'
  get 'login',to: 'session#new'
  post 'login',to: 'session#create'
  delete 'logout', to: 'session#destroy'
end
