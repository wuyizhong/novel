Novel::Application.routes.draw do
  resources :books do
    resources :book_lines do
      get 'previous', :on =>:collection
      get 'next', :on =>:collection
    end
    resources :book_assesses

    member do
       match 'bookstype'
    end

    collection do 
      post 'search'
      match 'bookstypehead'
  
    end
    
  end
  resources :authors
  resources :users do
    collection do
      get 'login'
      post 'signin'
      get 'register'
      get 'signout'
    end
  end

  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
