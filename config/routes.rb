Swapper::Application.routes.draw do
  resources :shifts, :only => [:index, :create, :update, :destroy]
end
