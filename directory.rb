# students in an array
students = [
    "Dr. Hannibal Lecter",
    "Darth Vader",
    "Nurse Ratched",
    "Michael Corleone",
    "Alex DeLarge",
    "The Wicked Witch of the West",
    "Terminator",
    "Freddy Krueger",
    "The Joker",
    "Joffrey Baratheon",
    "Norman Bates"
]
# first we print list of students
def print_header
puts "The students of Villains Academy"
puts "_______________"
end

def print(names)
students.each do |student|
    puts student
end
end

# then we print total number of students
def print_footer(names)
puts "Overall, we have #{student.count} great students"
end

print_header
print(students)
print_footer(students)
