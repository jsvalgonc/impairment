Rails.application.routes.draw do
  resources :allocations
  resources :grupo_analises
  resources :companies
  resources :amitigants
  resources :acontracts
  get 'aparties/index_AI_AC' => 'aparties#index_AI_AC'
  resources :aparties
  resources :contracts
  resources :rulesiis
  resources :mitigants
  resources :parties
  get 'home/index'

  devise_for :users
  devise_for :models
  root to: "home#index"
  get 'months/fase' => 'months#fase', as: :fase
  post 'months/proxima_fase' => 'months#proxima_fase', as: :proxima_fase
  resources :months do
    collection { post :import_month }
  end  
  
  
  #get 'months/:date/import_parties' => 'months#import_parties', as: :import_parties
  get 'months/:id/import_loans' => 'months#import_loans', as: :import_loans
  get 'months/:id/import_mitigants' => 'months#import_mitigants', as: :import_mitigants
  get 'months/:id/:type/import_parties' => 'months#import_parties', as: :import_parties
  get 'months/:id/:type/import_file'  => 'months#import_file', as: :import_file
  post 'months/:id/:type/import_file'  => 'months#import', as: :import_file_parties
  
  get 'rulesiis/:id/validar' => 'rulesiis#validar', as: :validar_regra
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
