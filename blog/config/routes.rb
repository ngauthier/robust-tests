Blog::Application.routes.draw do
  match '/' => redirect('/posts')
  resources :posts
end
