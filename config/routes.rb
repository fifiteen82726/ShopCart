Rails.application.routes.draw do
  
#   resources :products , :only =>[:show] do
#   collection do
#     get  :hi
#     post :yo
#   end
# end

# resources :products , :only =>[:show] do 
#   member do
#     get :sold
#   end

#   # 或
#   #get :sold, :on => :member
# end



get "product/:id/sold" => 'products#sold'
 

namespace :dashboard do
  resources :orders, :only => [:index, :update]
end



#begin
  devise_for :managers
  devise_for :users
  resources :statics, :only => [:index]
  root "items#index"

  resources :items, :only =>[:index, :show] do
    member do 
      get :add_cart    
    end
  end

  # /statics/action/



  namespace :dashboard do 
  #dashboard/items/action
    resources :orders


    #管理介面由後面打到前面
    #把實體先打完
    namespace :admin do 
      resources :items
      resources :cates
      resources :orders
      resources :users
      resources :managers
    end
  end

end



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

