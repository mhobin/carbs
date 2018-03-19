Rails.application.routes.draw do
  namespace :v1 do
    get '/carbs' => 'carbs#index'
    post '/carbs' => 'carbs#create'
    patch '/carbs/:id' => 'carbs#update'
    delete '/carbs/:id' => 'carbs#destroy'
  end
end
