class Grade < ApplicationRecord
    has_many :students
    validates :grade_id, presence: true


end
