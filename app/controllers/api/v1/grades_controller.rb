class Api::V1::GradesController < ApplicationController

    def index 
        @grades = Grade.all 
        render json: @grades 
    end

    def show
        @grade = Grade.find(params[:id])
        render json: @grade
    end

    private

        def grade_params
            params.require(:grade).permit(:grade_name)
        end

end
