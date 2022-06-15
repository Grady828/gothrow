Rails.application.routes.draw do
  root 'pages#home'
  get 'courses', to: 'pages#courses'
  get '/courses/search', to: 'courses#search'
  get '/courses/course_info/:course_id', to: 'course_info#course'
end
