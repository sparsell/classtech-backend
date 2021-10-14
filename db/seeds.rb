
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

grade1p = Grade.create(grade_name: "1st Grade", school_id: parkway.id)
grade2p = Grade.create(grade_name: "2nd Grade", school_id: parkway.id)
grade3p = Grade.create(grade_name: "3rd Grade", school_id: parkway.id)
grade4p = Grade.create(grade_name: "4th Grade", school_id: parkway.id)
grade5p = Grade.create(grade_name: "5th Grade", school_id: parkway.id)

grade6w = Grade.create(grade_name: "6th Grade", school_id: western.id)
grade7w = Grade.create(grade_name: "7th Grade", school_id: western.id)
grade8w = Grade.create(grade_name: "8th Grade", school_id: western.id)

grade1g = Grade.create(grade_name: "1st Grade", school_id: glenville.id)
grade2g = Grade.create(grade_name: "2nd Grade", school_id: glenville.id)
grade3g = Grade.create(grade_name: "3rd Grade", school_id: glenville.id)
grade4g = Grade.create(grade_name: "4th Grade", school_id: glenville.id)
grade5g = Grade.create(grade_name: "5th Grade", school_id: glenville.id)

grade6e = Grade.create(grade_name: "6th Grade", school_id: eastern.id)
grade7e = Grade.create(grade_name: "7th Grade", school_id: eastern.id)
grade8e = Grade.create(grade_name: "8th Grade", school_id: eastern.id)

grade1d = Grade.create(grade_name: "1st Grade", school_id: dundee.id)
grade2d = Grade.create(grade_name: "2nd Grade", school_id: dundee.id)
grade3d = Grade.create(grade_name: "3rd Grade", school_id: dundee.id)
grade4d = Grade.create(grade_name: "4th Grade", school_id: dundee.id)
grade5d = Grade.create(grade_name: "5th Grade", school_id: dundee.id)

grade6c = Grade.create(grade_name: "6th Grade", school_id: central.id)
grade7c = Grade.create(grade_name: "7th Grade", school_id: central.id)
grade8c = Grade.create(grade_name: "8th Grade", school_id: central.id)

thomas = Student.create(
    name: "Thomas", 
    has_phone: false, 
    has_other_device: true,
    screen_time: "Thomas has one hour of screen time every week day. More on the weekends. He is allowed to text and facetime his friends." 
    school_id: parkway.id, 
    grade_id: grade4p.id)
   

charlotte = Student.create(
    name: "Charlotte", 
    has_phone: true, 
    has_other_device: true, 
    screen_time: "Charlotte has one hour of screen time every week day. More on the weekends."
    school_id: western.id, 
    grade_id: grade6w.id)
   
