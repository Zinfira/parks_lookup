Rails.application.routes.draw do
  
  resources :parks do
    get 'random'
  end
end

