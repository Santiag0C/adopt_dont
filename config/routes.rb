Rails.application.routes.draw do
  get '/shelters', to: 'shelters#index'
  get 'shelters/new', to: 'shelters#new'
  get '/shelters/:id', to: 'shelters#show'
  post '/shelters', to: 'shelters#create'
  get '/shelters/:id/edit', to: 'shelters#edit'
  patch '/shelters/:id', to: 'shelters#update'
  delete '/shelters/:id', to: 'shelters#destroy'

  get '/pets', to: 'pets#index'
  get '/shelters/:shelter_id/pets', to: 'pets#index'
  get '/pets/:id', to: 'pets#show'
  get '/shelters/:shelter_id/pets/new', to: 'pets#new'
end
