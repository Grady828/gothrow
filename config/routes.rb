Rails.application.routes.draw do
  root 'pages#home'
  get 'courses', to: 'pages#courses'
end
