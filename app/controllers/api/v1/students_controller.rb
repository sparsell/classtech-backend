class Api::V1::StudentsController < ApplicaitonController 

    before_action :set_school, :set_grade

    def index 
        #   api/v1/schools/1/grades/1/students
        @students = @school.students
        render json: @students
    end
    
    def create
        @student = @school.Student.new(student_params)
        # @student.grade_id = params[:grade_id]
        # binding.pry
        if @student.save 
            render json: @student
            alert("Successfully created a new student.")
        else
            render json {:error "Sorry, there was an error."}
    end

    def show
        # @student = @school.student.find_by(id: params[:id]) or:

        @student = Student.find(params[:id])
        render json: @student
    end

    def destroy
        @student = Student.find(params [:id])
        @student.destroy
    end

    private

  
        def set_school
            @school = School.find(params[:school_id])
        end

        def set_grade
            @grade = Grade.find(params[:grade_id])
        end

        def student_params
            params.require(:student).permit(:name, :has_phone, :has_other_device, :school_id, :grade_id)
        end


end
