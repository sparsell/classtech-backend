Student
 - belongs_to :school
 - belongs_to :grade

 Grade 
- has_many :students
- belongs_to :school ????

School 
- has_many :students
- has_many :grades ????