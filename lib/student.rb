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
      grade TEXT
      );
    SQL
    DB[:conn].execute(sql)
  end 
  
  def self.drop_table
    sql = <<-SQL
      DROP TABLE IF EXISTS students;
    SQL
    DB[:conn].execute(sql)
  end 
  
  def save 
    sql = <<-SQL
      INSERT INTO students (name, grade) VALUES (?, ?)
    SQL
    DB[:conn].execute(sql, self.name, self.grade)
    @id ||= DB[:conn].execute("SELECT id FROM students WHERE name = ?", self.name)[0][0]
  end 
  
  def self.create(name, grade)
    new_student = self.new(name, grade)
    new_student.save 
    new_student
  end 
  
  def self.new_from_db(row)
  end 
  
  def self.find_by_name(name)
  end 
  
  def update
  end 
  
end
