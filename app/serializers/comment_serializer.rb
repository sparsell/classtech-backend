class SchoolSerializer
  include JSONAPI::Serializer
  attributes :screen_time_comment, :student_id
end