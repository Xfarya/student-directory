# def input_students
#     puts "Please enter the names of the students"
#     puts "To finish, just hit return twice"
#     # create an empty array
#     students = []
#     # get the first name
#     name = gets.chomp
#     # while the name is not empty, repeat this code
#     while !name.empty? do
#       # add the student hash to the array
#       students << {name: name, cohort: :november}
#       puts "Now we have #{students.count} students"
#       # get another name from the user
#       name = gets.chomp
#     end
#     # return the array of students
#     students
#   end


 
# def numbered_names

#     students.each_with_index do |numbered_list, i|
#         puts "#{(i +1)}. #{numbered_list[:name]}"
#     end
# end
# numbered_names

# def first_letter(letter)
#   students.each do |initial|
# if ("#{initial[:name][0]}" == letter)
#     puts "#{initial[:name]}"
# end
# end
# end

# first_letter("N")

# def less_than_twelve
  
# students.each do |student|
#         if "#{student[:name]}".length < 12
#             puts "#{student[:name]}"
#         end
#     end
# end

# less_than_twelve


students = [
    {name: "Dr. Hannibal Lecter", cohort: :november, hobbies: :cannibalism, country_of_birth: :Japan, height: 179 },
    {name: "Darth Vader", cohort: :november, hobbies: :spacewars, country_of_birth: :India, height: 169 },
    {name: "Nurse Ratched", cohort: :november, hobbies: :battleaxing, country_of_birth: :France, height: 173 },
    {name: "Michael Corleone", cohort: :november, hobbies: :mafia, country_of_birth: :Turkey, height: 158 },
    {name: "Alex DeLarge", cohort: :november, hobbies: :villainy, country_of_birth: :England, height: 167 },
    {name: "The Wicked Witch of the West", cohort: :november, hobbies: :makeup, country_of_birth: :Scotland, height: 141 },
    {name: "Terminator", cohort: :november, hobbies: :killing, country_of_birth: :Lebanon, height: 199 },
    {name: "Freddy Krueger", cohort: :november, hobbies: :killing, country_of_birth: :Dubai, height: 171 },
    {name: "The Joker", cohort: :november, hobbies: :pranks, country_of_birth: :Germany, height: 162 },
    {name: "Joffrey Baratheon", cohort: :november, hobbies: :got, country_of_birth: :Portugal, height: 185 },
    {name: "Norman Bates", cohort: :november, hobbies: :killing, country_of_birth: :Spain, height: 182 }
]

# n = 0
# while n < students.length do
#     puts students[n][:name]
#     n += 1
# end
