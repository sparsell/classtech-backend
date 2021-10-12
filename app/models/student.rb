class Student < ApplicationRecord
    belongs_to :school
    belongs_to :grade
    has_many :comments

    validates :name, :has_phone, :school_id, :grade_id, presence: true

end
