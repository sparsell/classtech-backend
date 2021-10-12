Rails.application.routes.draw do

    namespace :api do 
        namespace :v1 do 
            resources :schools do
                resources :grades do
                    resources :students do
                          resources :comments
                    end
                end
            end
        end 
    end

    namespace :api do 
        namespace :v1 do 
            resources :students do
                          resources :comments
                    end
                end
            end        
end
