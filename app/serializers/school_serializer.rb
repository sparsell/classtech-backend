class SchoolSerializer
  include JSONAPI::Serializer
  attributes :school_name, :id
  has_many :students
  has_many :grades
end
