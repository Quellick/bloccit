Rails.application.routes.draw do
  # get 'posts/index'

  # get 'posts/show'

  # get 'posts/new'

  # get 'posts/edit'
  
  # #1 we call the resources method and pass it a Symbol. This instructs Rails to create post routes for creating, updating, viewing, and deleting instances of Post. We'll review the precise URIs created in a moment.
   resources :topics do
   resources :posts, except: [:index]
   end
  # #2 we remove get "welcome/index" because we've declared the index view as the root view. We also modify the about route to allow users to visit /about, rather than  /welcome/about.
  # get 'welcome/index'
  # get 'welcome/about'
  
   get 'about' => 'welcome#about'

   root 'welcome#index'
  
end
