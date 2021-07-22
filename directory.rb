
    @students = []

    def interactive_menu
        loop do
            print_menu
          # 2. read the input and save it into a variable
          # 3. do what the user has asked
          process(STDIN.gets.chomp)
        end
      end

      def print_menu
          # 1. print the menu
          puts "1. Input the students"
          puts "2. Show the students"
          puts "3. Save the list to students.csv"
          puts "4. Load student list from students.csv"
          puts "9. Exit" 
      end

      def show_students
        print_header
        print_students_list
        print_footer
      end

      def addstudents(name, cohort)
        @students << {name: name, cohort: cohort.to_sym}
      end

# students in an array
def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"
students = []
name = STDIN.gets.chomp
while !name.empty? do
   addstudents(name, "november")
    puts "Now we have #{@students.count} students"
    name = STDIN.gets.chomp
students
end
end

def load_students(filename = "students.csv")
    puts "Enter filename"
filename = STDIN.gets.chomp 
# return if filename.nil?
# end
if File.exists?(filename)
    file = File.open(filename, "r")
    file.readlines.each do |line|
        name, cohort = line.chomp.split(',')
        addstudents(name, cohort)
    end
puts "Loaded #{@students.count} from #{filename}"
elsif
        puts "Sorry, #{filename} doesn't exist."
        exit
    end
file.close
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
        input_students
    when "2" 
        show_students
    when "3"
    save_students
    when "4"
    load_students
    when "9"
      exit
    else
      puts "I don't know what you meant, try again"
    end
end

def save_students
puts "Enter filename"
filename = STDIN.gets.chomp 
if File.exists?(filename)
    file = File.open(filename, "w")
    @students.each do |student| 
       student_data = [student[:name], student[:cohort]]
       csv_line = student_data.join(",")
       file.puts csv_line
    end
puts "Saved #{@students.count} to #{filename}"
else 
    puts "Sorry, #{filename} doesn't exist."
    exit
end
 file.close
end




def try_load_students
    filename = ARGV.first
    return if filename.nil?
    if File.exists?(filename)
        load_students(filename)
    puts "Loaded #{@students.count} from #{filename}"
    else 
        puts "Sorry, #{filename} doesn't exist."
        exit
    end
end

interactive_menu

