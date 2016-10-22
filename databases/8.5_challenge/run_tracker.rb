require 'sqlite3'

db = SQLite3::Database.new("log.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS runs(
    id INTEGER PRIMARY KEY,
    distance INT,
    duration INT
  )
SQL

db.execute(create_table_cmd)