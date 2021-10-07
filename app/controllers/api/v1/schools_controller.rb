class Api::V1::SchoolsController < ApplicationController 
    
    def index 
        @schools = School.all 
        render json: @schools
    end
    
    def create
        @school = School.new(school_params)
        if @school.save
            render json: @school
            alert("Successfull added a new school.")
        else
            render json: {error: "Error creating account"}
        end
    end

    def show
        @school = School.find(params[:id])
    end

    private

        def school_params
            params.require(:school).permit(:school_name)
        
        end


end