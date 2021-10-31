class GradeSerializer
  include JSONAPI::Serializer
  attributes :id, :grade_name
  
  has_many :students
end
