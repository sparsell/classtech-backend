class Student < ApplicationRecord
    belongs_to :school
    belongs_to :grade

    validates :name, :has_phone, :has_other_device, :screen_time, :school_id, :grade_id, presence: true

end
