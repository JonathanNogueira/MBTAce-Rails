RailsMbtaGtfs::Application.routes.draw do
  get "gtfs_route_types/show"
  get "gtfs_frequencies/show"
  get "gtfs_feed_infos/show"
  get "gtfs_fare_rules/show"
  get "gtfs_fare_attributes/show"
  get "gtfs_directions/show"
  get "gtfs_calendars/show"
  get "gtfs_controllers/show"
  get "gtfs_agencys/show"
  get "gtfs_routes/show"
  get "gtfs_routes/index"
  get "mbta_route/mbta_route_index"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
    root 'mbta_route#mbta_route_index'
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
      resources :gtfs_routes, :only =>[:show, :index]
      resources :gtfs_agencys
      resources :gtfs_calendars
      resources :gtfs_calendar_dates 
      resources :gtfs_directions
      resources :gtfs_fare_attributes 
      resources :gtfs_feed_info 
      resources :gtfs_frequencies

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
