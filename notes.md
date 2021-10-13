Student
 - belongs_to :school
 - belongs_to :grade

 Grade 
- has_many :students
- belongs_to :school ????

School 
- has_many :students
- has_many :grades ????


    # Stretch Feature - add a new school
    # have to add all grades to new school at School.new...

    # def create
    #     @school = School.new(school_params)
    #     if @school.save
    #         render json: @school
    #         alert("Successfully added a new school.")
    #     else
    #         render json: {error: "Error creating account"}
    #     end
    # end