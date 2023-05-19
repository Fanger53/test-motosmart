Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      root 'rankings#current'
      get 'ranking/actual', to: 'rankings#current'
      get 'ranking/:year/:month', to: 'rankings#by_month_year'
      post 'ranking/record', to: 'rankings#record'
    end
  end
end
