require_relative "../config/environment.rb"

class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

  attr_accessor :id, :name, :grade
  
  def initialize(id=nil, name, grade)
  end 
  
  def self.create_table
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
