
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# leila = Child.create(name: "Leila", user_id: aya.id, grade_id: five.id)
#     Device.create(device_type: "iPad")

parkway = School.create(school_name: "Parkway")
glenville = School.create(school_name: "Glenville")
dundee = School.create(school_name: "Dundee")
western = School.create(school_name: "Western")
eastern = School.create(school_name: "Eastern")
central = School.create(school_name: "Central")

grade1 = Grade.create(grade_name: "1st Grade")
grade2 = Grade.create(grade_name: "2nd Grade")
grade3 = Grade.create(grade_name: "3rd Grade")
grade4 = Grade.create(grade_name: "4th Grade")
grade5 = Grade.create(grade_name: "5th Grade")
grade6 = Grade.create(grade_name: "6th Grade")
grade7 = Grade.create(grade_name: "7th Grade")
grade8 = Grade.create(grade_name: "8th Grade")

thomas = Student.create(
    name: "Thomas", 
    has_phone: false, 
    has_other_device: true, 
    school_id: parkway.id, 
    grade_id: grade4.id)

charlotte = Student.create(
    name: "Charlotte", 
    has_phone: true, 
    has_other_device: true, 
    school_id: western.id, 
    grade_id: grade6.id)
