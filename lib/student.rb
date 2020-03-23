require_relative "../config/environment.rb"

class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

  attr_accessor :id, :name, :grade
  
  def initialize(id=nil, name, grade)
    @id = id 
    @name = name 
    @grade = grade
  end 
  
  def self.create_table
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS students (
      id INTEGER PRIMARY KEY,
      name TEXT,
      grade )
    SQL 
    sdf
  end 
  
  def self.drop_table
  end 
  
  def save 
  end 
  
  def self.create(name:, grade:)
  end 
  
  def self.new_from_db(row)
  end 
  
  def self.find_by_name(name)
  end 
  
  def update
  end 
  
end
