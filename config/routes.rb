Rails.application.routes.draw do
  root :to => 'homes#top'
  post 'books' => 'books#create'
  get 'books' => 'books#index'#bookに変えた
  get 'books/:id' => 'books#show', as: 'book'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  patch 'books/:id' => 'books#update', as: 'update_book'
  

end
