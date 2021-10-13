class Api::V1::SchoolsController < ApplicationController 
    
    def index 
        @schools = School.all 
        render json: @schools
    end

    def show
        @school = School.find(params[:id])
        render json: @school
    end

    private

        def school_params
            params.require(:school).permit(:school_name)
        
        end


end