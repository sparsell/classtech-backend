class Api::V1::GradesController < ApplicationController

    def index 
        @grades = Grade.all 
        render json: @grades, each_serializer: GradeSerializer
    end

    def show
        @grade = Grade.find(params[:id])
        render json: @grade, each_serializer: GradeSerializer
    end

    private

        def grade_params
            params.require(:grade).permit(:grade_name, :students)
        end

end
