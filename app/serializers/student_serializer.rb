class StudentSerializer
  include JSONAPI::Serializer
  attributes :name, :grade_id, :school_id
end
