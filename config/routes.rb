Rails.application.routes.draw do
  resources :posts do
    delete '/images/:image_id' => 'posts#destroy_image', as: :destroy_image, on: :member
  end

  resources :events do
    delete :destroy_cover, on: :member

    # DELETE /events/:id/banners
    delete :destroy_banners, on: :member
    # DELETE /events/:id/banners/:banner_id
    delete '/banners/:banner_id' => 'events#destroy_banner', as: :destroy_banner, on: :member
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
