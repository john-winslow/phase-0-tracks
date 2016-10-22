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

# method to return total miles logged

# method to return total duration logged

# method to ruturn average pace logged


# DRIVER CODE


puts "Would you like to add a run? (y/n)"


puts "------------------------"
puts "Total miles: "
puts "Total time: "
puts "Average pace: "
puts "------------------------"
