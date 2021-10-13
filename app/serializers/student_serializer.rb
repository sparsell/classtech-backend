class StudentSerializer
    include JSONAPI::Serializer

    attributes :id, :name, :grade, :school
    has_many :comments 
    
end
