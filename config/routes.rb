Rails.application.routes.draw do

  root 'hello#index'  
  #get '/ruby', to: 'hello#index' 

  get '/map/api.rb', to: 'hello#myapi'

end
