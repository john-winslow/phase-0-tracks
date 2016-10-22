require 'sqlite3'

# create new database file logging runs
db = SQLite3::Database.new("log.db")

# SQL string to create new table 
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS runs(
    id INTEGER PRIMARY KEY,
    distance INT,
    duration INT
  )
SQL

# create run table within log database
db.execute(create_table_cmd)

# method to add time and duration to run database
def add_run(db, distance, duration)
  db.execute("INSERT INTO runs (distance, duration) VALUES (?, ?)", [distance, duration])
end

# create variables to store total distance, duration, and average mile time

total_distance = db.execute("SELECT SUM(distance) FROM runs")
total_duration = db.execute("SELECT SUM(duration) FROM runs")


# DRIVER CODE


puts "Would you like to add a run? (y/n)"

# if yes, ask for distance and duration
if gets.chomp.downcase == 'y'
	puts "How many miles did you run?"
	distance = gets.chomp

	puts "How many minutes did you run for?"
	duration = gets.chomp

	add_run(db, distance, duration)
end

# if no (or after finished entering run), print statistics from run log

puts "------------------------"
puts "Total miles: #{total_distance}"
puts "Total time: #{total_duration}"
puts "Average pace: #{average_pace}"
puts "------------------------"

