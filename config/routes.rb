Rails.application.routes.draw do
  resources :beer_questions
  resources :horse_questions
  root 'welcome#index'
  resources :quizzes
  resources :horses
  resources :beers
  resources :questions
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
