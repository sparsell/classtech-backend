class Grade < ApplicationRecord
    has_many :students
    validates :grade_name, presence: true


end
