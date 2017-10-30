Rails.application.routes.draw do
  
  
  resources :contacts

  resources :books

  get 'home/index'

  resources :personal_details

  resources :finances

  resources :educations
  #resources :searches
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  resources :addresses do
    get 'addresses/index'

    get 'addresses/new'

    post 'addresses/edit'

 
    get 'addresses/update'

    get 'addresses/show'

    get 'addresses/delete'

  end


  resources :students do
     

    get 'students/index'

    get 'students/new'

    get 'students/edit'

    get 'students/update'

    get 'students/show'

    get 'students/delete'


  end
  match '/signup', to: 'users#new',:via => [:get, :post]
  match '/searches/new', to: 'searches#new',:as => :searches,:via => [:get]
  match '/searches/new', to: 'searches#create',:via => [:post]
  match '/searches/country/:id', to: 'searches#state',:via => [:get]
  match '/searches/state/:state_id', to: 'searches#city',:via => [:get]
  match '/searches/zip/:city_id', to: 'searches#zip',:via => [:get]
  match '/searches/search', to: 'searches#search',:via => [:post]
  match '/addresses/:id', to: 'addresses#update',:via => [:post]
  match '/addresses/country/:id', to: 'addresses#state',:via => [:get]
  match '/addresses/state/:state_id', to: 'addresses#city',:via => [:get]
  match '/addresses/zip/:city_id', to: 'addresses#zip',:via => [:get]
  match '/educations/country/:id', to: 'educations#state',:via => [:get]
  match '/educations/state/:state_id', to: 'educations#city',:via => [:get]
  match '/educations/zip/:city_id', to: 'educations#zip',:via => [:get]
  match '/educations/:id', to: 'educations#update',:via => [:post]
  match '/finances/:id', to: 'finances#update',:via => [:post]
  match '/finances/:id/download', to: 'finances#download',:via => [:get]
  match '/personal_details/:id', to: 'personal_details#update',:via => [:post]
  match '/signin', to: 'sessions#new',:via => [:get, :post]
  match '/signout', to: 'sessions#logout',:via => [:delete]



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
