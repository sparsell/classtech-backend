class GradeSerializer
  include JSONAPI::Serializer
  attributes :grade_name, :school_id
end
