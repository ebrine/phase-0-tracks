# Reminder App requirements:

# Store reminders for the user
  # data includes: 
  # date to remind
  # message
  
# METHODS/FUNCTIONALITY
# Allow user to create new reminders
# Allow user to edit reminders?
# Allow user to access reminders for today
# Allow user to access reminders for specified day

# STRETCH:
# order reminders chronologically
# complete task/remove task from reminders list

# UI
# Welcome message with today's date & number of reminders
# Options for what they want to do:
  # Read today's reminders
  # Read another day's reminders
  # Create a new reminder
# check to ensure date input is valid, otherwise ask to re-enter

# exit at any time

############ problems to solve/ things to learn
# (1) how to deal with date ==> 

# require 'Date'
# puts "What day? Please enter in form: (month-day)"
# day = gets.chomp
# d4 = Date.strptime(day, '%m-%d')
# p "Your day is #{d4}"


## Header
require 'sqlite3'
require_relative 'date_checker.rb'


$DB = SQLite3::Database.new('reminders.db')
create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS reminders (
    id INTEGER PRIMARY KEY,
    date VARCHAR(255),
    reminder VARCHAR(255)
  )
SQL
# create reminders table
$DB.execute(create_table)


def normalize_date(date)
  norm_date = Date.strptime(date, '%m-%d')
  norm_date = norm_date.to_s
end

# add reminder to data structure
def create_reminder(due_date, reminder)
  norm_date = normalize_date(due_date)
  $DB.execute("INSERT INTO reminders (date, reminder) VALUES (?,?)",
    [norm_date, reminder])
end

# retrieve reminders for specified date (including today)
def get_reminders(date)
  d = date_checker(date)
  new_date = normalize_date(d)
  get = <<-SQL
  SELECT * FROM reminders WHERE date = ?
  SQL
  $DB.execute(get, [new_date])
  #puts selected_reminders
end

def print_reminders(array)
  puts "---------------------------------------"
  puts "You have #{array.length} reminders:"
  array.each do |reminder|
    date = reminder[1]
    to_do = reminder[2]
    puts ""
    puts "On #{date} don't forget:"
    puts "#{to_do}"
  end
end


###### UI #######################

puts "    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts "    ~~~ REMINDER APP 2017 ~~~~~~"
puts "    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts "    ~~~~~ press (enter) ~~~~~~~~"
puts "    ~~~~~~~~ to begin ~~~~~~~~~~"
puts "    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
gets.chomp


puts "    ** Menu: **"
puts ""
puts "(make a selection to begin)"
puts ""
puts "(1) Add new reminder"
puts "(2) View today's reminders"
puts "(3) View another day's reminders"
puts "(4) View all reminders"
puts ""
input = gets.chomp
puts " "

  if input.to_i == 1
    puts "---------------------------------------"
    puts ""
    puts "Enter date for new reminder (month-day)"
    new_date = gets.chomp
    new_date = date_checker(new_date)
    puts "What would you like to be reminded?"
    new_reminder = gets.chomp
    create_reminder(new_date, new_reminder)
  elsif input.to_i == 2
    # calls get_reminders on today
  elsif input.to_i == 3
    puts "---------------------------------------"
    puts "What day's reminders would you like to view?"
    input = gets.chomp
    print_reminders(get_reminders(input))
  elsif input.to_i == 4
    print_reminders($DB.execute('SELECT * FROM reminders'))
  else 
    puts "Please enter a valid selection."
  end





#clears at the end for now -- delete later!!
#$DB.execute('DROP TABLE reminders')

