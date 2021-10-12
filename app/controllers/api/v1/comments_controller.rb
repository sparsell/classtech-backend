class Api::V1::CommentsController < ApplicationController    
    
before_action :set_student

    def index 
        #   api/v1/student/1/comment
        @comments = @student.comments
        render json: @comments
    end
    
    def create
        @comment = @student.Comment.new(comment_params)
        if @comment.save 
            render json: @comment
            alert("Successfully created a new comment.")
        else
            render json {:error "Sorry, there was an error."}
    end

    def show
        @comment = @student.comment.find_by(id: params[:id])
        # @comment = Comment.find(params[:id])
        render json: @comment
    end

    def destroy
        @comment = Comment.find(params [:id])
        @comment.destroy
    end

    private

        def set_student
            @student = Student.find(params[:student_id])
        end

        def comment_params
            params.require(:comment).permit(:screen_time_comment, :student_id)
        end


end
