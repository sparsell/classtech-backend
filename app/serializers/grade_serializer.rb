class GradeSerializer
  include JSONAPI::Serializer
  attributes :grade_name, :school_id
  has_many :students
end
