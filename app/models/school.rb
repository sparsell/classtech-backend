class School < ApplicationRecord
    has_many :students
    has_many :school_grades
    has_many :grades, through: :school_grades
end
