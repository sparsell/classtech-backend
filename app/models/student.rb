class Student < ApplicationRecord
    belongs_to :grade

    validates :name, :screen_time, :grade_id, presence: true
    validates :has_phone, :has_other_device, inclusion: [true, false] 

end
