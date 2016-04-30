Rails.application.routes.draw do


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  get '/' => 'home#index'
  post '/write' => 'home#write'
  get '/destroy/:post_id' => 'home#destroy'
  get '/update_view/:post_id' => 'home#update_view'
  post 'real_update/:post_id' => 'home#really' 
  # get VS post ?? -> get 은 주소 그대로를 넘겨 주는 것. post는 뒤로 숨겨서 넘겨주는 것.
  # 실질적인 차이는 전자는 주소 짧은거 ㅇㅋ 후자는 긴거도 ㅇㅋ
  # get은 가져온다 // post는 수행한다.
  # 모두 get // 전송 할 때만 post. 나머지는 잘 안씁니다~
  
  
  
  
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
