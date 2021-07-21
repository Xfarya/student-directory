# # students in an array
def input_students
    puts "Please enter the name and cohort of the students"
    puts "To finish, just hit return twice"
students = []

name = gets.chomp.to_sym
cohort = gets.chomp.to_sym

while name.empty? do
    name = "name"
    break
end
while cohort.empty? do 
    cohort = "cohort"
    break
end

while !name.empty? && !cohort.empty? do
    students << {name: name, cohort: cohort} 
    puts "#{name} of #{cohort} cohort has been added. There are #{students.length} students in the directory"
    name = gets.chomp.to_sym
    cohort = gets.chomp.to_sym
if name.empty? && cohort.empty? 
        break
    end
if name.empty? 
    name = "name"
    break
end
if cohort.empty? 
    cohort = "cohort"
    break
end
end
students
end

def display(input_st, str)
input_st.map do |by_cohort|
    if (by_cohort[:cohort] == str)
        puts by_cohort[:name] 
end
end
end

# def printletter(letter)
# students = [
#     {name: "Dr. Hannibal Lecter", cohort: :november, hobbies: :cannibalism, country_of_birth: :Japan, height: 179 },
#     {name: "Darth Vader", cohort: :november, hobbies: :spacewars, country_of_birth: :India, height: 169 },
#     {name: "Nurse Ratched", cohort: :november, hobbies: :battleaxing, country_of_birth: :France, height: 173 },
#     {name: "Michael Corleone", cohort: :november, hobbies: :mafia, country_of_birth: :Turkey, height: 158 },
#     {name: "Alex DeLarge", cohort: :november, hobbies: :villainy, country_of_birth: :England, height: 167 },
#     {name: "The Wicked Witch of the West", cohort: :november, hobbies: :makeup, country_of_birth: :Scotland, height: 141 },
#     {name: "Terminator", cohort: :november, hobbies: :killing, country_of_birth: :Lebanon, height: 199 },
#     {name: "Freddy Krueger", cohort: :november, hobbies: :killing, country_of_birth: :Dubai, height: 171 },
#     {name: "The Joker", cohort: :november, hobbies: :pranks, country_of_birth: :Germany, height: 162 },
#     {name: "Joffrey Baratheon", cohort: :november, hobbies: :got, country_of_birth: :Portugal, height: 185 },
#     {name: "Norman Bates", cohort: :november, hobbies: :killing, country_of_birth: :Spain, height: 182 }
# ]
# students.each do |initial|
# if ("#{initial[:name][0]}" == letter)
#  puts "#{initial[:name]}"
# end
# end
# end

# def print(names)
# names.each_with_index do |student, i|
#     puts "#{(i + 1)}. #{student[:name]}"
# end
# end



# first we print list of students
# def print_header
# puts "The students of Villains Academy"
# puts "_______________"
# end

# def print(names)
# names.each do |student|
#     puts "#{student[:name]} (#{student[:cohort]} cohort)"
# end
# end

# # then we print total number of students
# def print_footer(names)
# puts "Overall, we have #{names.count} great students"
# end

# students = input_students
# print_header
# print(students)
# print_footer(students)

# printletter("T")

# students.each do |student|
#     if "#{student[:name]}".length < 12
#         puts "#{student[:name]}"
#     end
# end

# n = 0
# while n < students.length do
#     puts students[n][:name]
#     n += 1
# end

# students.each do |student|
# puts "#{student[:name]}".center(50)
# end
# november = "november"
puts display(input_students, "november")

def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"
  @students = []
  name = gets.chomp
    # while the name is not empty, repeat this code
  while !name.empty? do
    # % add the student hash to the array
    @students << {:name => name}
    puts "Now we have #{@students.count} students"
    # % get another name from the user
    name = gets.chomp.to_sym
    end
    # % return the array of students
    # students
  end
  
  def print_header
    puts "The students of my cohort at Makers Academy"
    puts "-------------"
  end
  
  def print_students_list
    @students.each do |student|
      puts "#{student[:name]}"
    end
  end
  
  def print_footer names
    puts "Overall, we have #{names.count} great students"
  end
  
  def print_menu
  puts "1. Input the students"
      puts "2. Show the students"
      puts "9. Exit"
  end
  
  def process(selection)
    case selection
      when "1"
        input_students
      when "2"
        show_students
      when "9"
      exit
      else
        puts "I don't know what you meant, try again"
    end
  end
  
  def show_students
  # students = input_students
  print_header
  print_students_list
  print_footer students
  end
  
  def interactive_menu
    loop do
      print_menu
      process(gets.chomp)
  end
  end
  interactive_menu