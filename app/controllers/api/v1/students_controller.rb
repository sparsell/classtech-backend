class Api::V1::StudentsController < ApplicationController 

    before_action :set_grade

    def index 
        @students = @grade.students
        @students = Student.all
        render json: StudentSerializer.new(@students)
    end
    
    def create
        # pry
        # @student = @grade.students.new(student_params)
        @student = Student.new(student_params)
        # binding.pry
        if @student.save 
            render json: StudentSerializer.new(@student)
        else
            render json: {error: 'Sorry, there was an error.'}
        end
    end

    def show
        @student = Student.find(params[:id])
        # render json: @student, adapter: :json
        render json: @student, each_serializer: StudentSerializer
    end

    def destroy
        @student = Student.find(params [:id])
        @student.destroy
    end

    def set_grade
        # pry
        if params[:grade_id]
            @grade = Grade.find_by(id: params[:grade_id])
            else
            @grade = Grade.find_by(grade_name: params[:student][:grade_name])
        end
    end

    private

        def student_params
            params.require(:student).permit(:name, :has_phone, :has_other_device, :screen_time, :school, :grade_id)
        
        end


end
