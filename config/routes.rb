Rails.application.routes.draw do
  namespace :api do
    get '/languages' => 'languages#index'
    get '/countries' => 'countries#index'
    get '/holidays/:country/:year' => 'holidays#index'
  end
end
