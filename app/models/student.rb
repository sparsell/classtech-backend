class Student < ApplicationRecord
    belongs_to :school
    belongs_to :grade

    validates :name, :school_id, :has_phone, presence: true

end
