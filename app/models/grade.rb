class Grade < ApplicationRecord
    has_many :students
    has_many :school_grades
    has_many :schools, through: :school_grades

    validates :grade_name, presence: true


end
