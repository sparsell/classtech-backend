class StudentSerializer
    include JSONAPI::Serializer

    attributes :id, :name, :has_phone, :has_other_device, :screen_time, :school, :grade_id
    
end
