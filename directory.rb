# students in an array
students = [
    {name: "Dr. Hannibal Lecter", cohort: :november},
    {name: "Darth Vader", cohort: :november},
    {name: "Nurse Ratched", cohort: :november},
    {name: "Michael Corleone", cohort: :november},
    {name: "Alex DeLarge", cohort: :november},
    {name: "The Wicked Witch of the West", cohort: :november},
    {name: "Terminator", cohort: :november},
    {name: "Freddy Krueger", cohort: :november},
    {name: "The Joker", cohort: :november},
    {name: "Joffrey Baratheon", cohort: :november},
    {name: "Norman Bates", cohort: :november}
]
# first we print list of students
def print_header
puts "The students of Villains Academy"
puts "_______________"
end

def print(names)
names.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
end
end

# then we print total number of students
def print_footer(names)
puts "Overall, we have #{names.count} great students"
end

print_header
print(students)
print_footer(students)
