Rails.application.routes.draw do

    namespace :api do 
        namespace :v1 do 
            resources :grades do
                resources :students
            end
            resources :students, only: [:index, :create] do
            end
        end 
    end
   
end
