require 'sqlite3'

db = SQLite3::Database.new "test.db"

table = 'things'

db.execute "DROP TABLE IF EXISTS #{table};"

db.execute <<-SQL
  CREATE TABLE #{table} (
    name varchar(30)
  );
SQL

%w(foo bar baz).each do |thing|
  db.execute "INSERT INTO #{table} VALUES ( ? )", thing
end