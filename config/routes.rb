Rails.application.routes.draw do
  
    namespace :api do 
        namespace :v1 do 
            resources :students
            resources :schools
            resources :grades
        end 
    end
    
end
