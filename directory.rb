
    @students = []

    def interactive_menu
        loop do
            print_menu
          # 2. read the input and save it into a variable
          selection = gets.chomp
          # 3. do what the user has asked
          process(gets.chomp)
        end
      end

      def print_menu
          # 1. print the menu
          puts "1. Input the students"
          puts "2. Show the students"
          puts "9. Exit" 
      end

      def show_students
        print_header
        print_students_list
        print_footer
      end

# students in an array
def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"
students = []
name = gets.chomp
while !name.empty? do
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    name = gets.chomp
end
students
end

# students = [
#     {name: "Dr. Hannibal Lecter", cohort: :november},
#     {name: "Darth Vader", cohort: :november},
#     {name: "Nurse Ratched", cohort: :november},
#     {name: "Michael Corleone", cohort: :november},
#     {name: "Alex DeLarge", cohort: :november},
#     {name: "The Wicked Witch of the West", cohort: :november},
#     {name: "Terminator", cohort: :november},
#     {name: "Freddy Krueger", cohort: :november},
#     {name: "The Joker", cohort: :november},
#     {name: "Joffrey Baratheon", cohort: :november},
#     {name: "Norman Bates", cohort: :november}
# ]


# first we print list of students
def print_header
puts "The students of Villains Academy"
puts "_______________"
end

def print_students_list
@students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
end
end

# then we print total number of students
def print_footer
puts "Overall, we have #{@students.count} great students"
end

def process(selection)
    case selection
    when "1"
      students = input_students
    when "2"
     show_students
    when "9"
      exit
    else
      puts "I don't know what you meant, try again"
    end
end

interactive_menu

