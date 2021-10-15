class GradeSerializer
  include JSONAPI::Serializer
  attributes :grade_name
  has_many :students
end
