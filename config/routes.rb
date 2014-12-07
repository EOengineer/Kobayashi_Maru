KobayashiMaruV1::Application.routes.draw do
  devise_for :users


  namespace :admin do
    resources :states
    resources :sizes
    resources :durations
    resources :statuses
    resources :cancer_subtypes
  end

  namespace :user do
    resources :studies
    resources :cancer_subtypes
    resources :user_profiles
  end

  namespace :public do
    resources :pages
    resources :studies, only: [:index, :show]
    resources :states, only: [:index, :show]
    resources :sizes, only: [:index, :show]
    resources :durations, only: [:index, :show]
    resources :cancer_subtypes, only: [:index, :show]
    resources :statuses, only: [:index, :show]
  end



  root 'public/pages#index'
  # get '/about', to: 'pages#about'
  # get '/protect', to: 'pages#protect'
  # get '/admin', to: 'studies#admin'


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
