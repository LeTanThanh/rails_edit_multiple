Rails.application.routes.draw do
  root "products#index"

  resources :products, only: %i|index| do
    collection do
      put :edit_multiple, :update_multiple
    end
  end
end
