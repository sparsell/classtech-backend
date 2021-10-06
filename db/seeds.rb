# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# leila = Child.create(name: "Leila", user_id: aya.id, grade_id: five.id)
#     Device.create(device_type: "iPad")

parkway = School.create(name: "Parkway")
glenville = School.create(name: "Glenville")
dundee = School.create(name: "Dundee")
western = School.create(name: "Western")
eastern = School.create(name: "Eastern")
central = School.create(name: "Central")

grade1p = Grade.create(name: "1st Grade", school: parkway)
grade2p = Grade.create(name: "2nd Grade", school: parkway)
grade3p = Grade.create(name: "3rd Grade", school: parkway)
grade4p = Grade.create(name: "4th Grade", school: parkway)
grade5p = Grade.create(name: "5th Grade", school: parkway)

grade1g = Grade.create(name: "1st Grade", school: glenville)
grade2g = Grade.create(name: "2nd Grade", school: glenville)
grade3g = Grade.create(name: "3rd Grade", school: glenville)
grade4g = Grade.create(name: "4th Grade", school: glenville)
grade5g = Grade.create(name: "5th Grade", school: glenville)