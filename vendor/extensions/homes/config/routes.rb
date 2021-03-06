Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :homes do
    resources :homes, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :homes, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :homes, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
