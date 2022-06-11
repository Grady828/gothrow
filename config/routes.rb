Rails.application.routes.draw do
  root 'pages#home'
  get 'courses', to: 'pages#courses'
  get '/courses/search', to: 'courses#search'
end
