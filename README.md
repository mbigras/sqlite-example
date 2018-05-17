# SQLite3 Example

> Hacking on sqlite

## Installation

```
git clone https://github.com/mbigras/sqlite-example
cd sqlite-example
bundle install
```

## Usage example

```
bundle exec ruby migration.rb
sqlite3 test.db .schema
sqlite3 test.db .tables
sqlite3 -header test.db 'select * from things'
```

## Note about install sqlite

```
brew install sqlite
```