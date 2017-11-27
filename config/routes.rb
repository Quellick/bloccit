Rails.application.routes.draw do
  # #1 we call the resources method and pass it a Symbol. This instructs Rails to create post routes for creating, updating, viewing, and deleting instances of Post. 
  # #  We'll review the precise URIs created in a moment.
   resources :posts
   resources :questions
  
   get 'about' => 'welcome#about'

   root 'welcome#index'
  
end
