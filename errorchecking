def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
students = []
name = gets.chomp.to_sym
  # while the name is not empty, repeat this code
while !name.empty? do
  # % add the student hash to the array
  students << {:name => name}
  puts "Now we have #{students.count} students"
  # % get another name from the user
  name = gets.chomp.to_sym
  end
  # % return the array of students
  students
end

def print_header
  puts "The students of my cohort at Makers Academy"
  puts "-------------"
end

def print(arr)
  arr.each do |student|
    puts "#{student[:name]}"
  end
end

def print_footer names
  puts "Overall, we have #{names.count} great students"
end


students = input_students
if students.length < 1
  puts "Need more names"
else 
print_header
print(students)
print_footer students
end
