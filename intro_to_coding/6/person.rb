require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'lecture.sqlite3'
)

class Person < ActiveRecord::Base

end
