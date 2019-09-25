Rails.application.routes.draw do
  
  # created by 'rails g controller Dashboard main user blog'

  # localhost:3000/admin/dashboard/main
  # move admin/dashboard_controller.rb
  # move main/dashboard/*erb
  namespace :admin do
    get 'dashboard/main'
    get 'dashboard/user'
    get 'dashboard/blog'
  end


  # /pages/about(.:format)
  # get 'pages/about'
  
  # /about(.:format)
  get 'about', to: 'pages#about' 

  # /looong/veryloooong/leads(.:format)
  get 'looong/veryloooong/leads', to: 'pages#contact',  as: 'lead'

  resources :blogs
  # resources :posts

  # /posts/wadfawefaiupwerfjaioe
  # be carefull the order
  get 'posts/*missing', to: 'posts#missing'


  get 'query/:else/:another_one', to: 'pages#something'

  # this is catch anything
  # get '*missing', to: 'posts#missing'

  # root GET    /
  root to: 'pages#home'
end
