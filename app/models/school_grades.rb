class SchoolGrade < ApplicationRecord
    
    belongs_to :school
    belongs_to :grade

end