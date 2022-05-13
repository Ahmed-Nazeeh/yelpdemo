Rails.application.routes.draw do
  
  devise_for :users
  resources :restaurants do 
    collection do 
      get 'search' #This will create the url for the search
    end
    resources :reviews, except: [:show, :index]
  end
  get 'pages/about'
  get 'pages/contact'

  root 'restaurants#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
