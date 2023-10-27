Rails.application.routes.draw do
  devise_for :users
  namespace :user do
    post '/graphql', to: 'graphql#execute'
  end

  get 'up' => 'rails/health#show', as: :rails_health_check

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: '/user/graphiql', graphql_path: '/user/graphql'
  end
end
