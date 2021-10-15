class Api::V1::StudentsController < ApplicationController 

    before_action :set_grade

    def index 
        @students = @school.students
        render json: @students
    end
    
    def create
        @student = @grade.students.new(student_params)
        if @student.save 
            render json: @student
            console.log("Successfully created a new student.")
        else
            render json: {error: 'Sorry, there was an error'}
        end
    end

    def show
        @student = Student.find(params[:id])
        render json: @student
    end

    def destroy
        @student = Student.find(params [:id])
        @student.destroy
    end

    private

        def set_grade
            @grade = Grade.find(params[:grade_id])
        end

        def student_params
            params.require(:student).permit(:name, :has_phone, :has_other_device, :screen_time, :school, :grade_id)
        
        end


end
