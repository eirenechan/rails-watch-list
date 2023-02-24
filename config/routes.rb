Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "lists#index"
  resources :lists, except: :index do
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: [:destroy]

# [X] As a user, I can see all my movie lists
# [X] As a user, I can create a movie list
# [X] As a user, I can see the details of a movie list
# [X] As a user, I can bookmark a movie inside a movie list
# [ ] As a user, I can destroy a bookmark
end
