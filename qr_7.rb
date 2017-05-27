#扩充类

class Student
  attr_accessor :name
  attr_accessor :age
  attr_accessor :no
  def initialize(name,age,no)
    @name = name
    @age = age
    @no = no
  end
end



###实例方法的扩充 monkey_patch

class Student
  def study
    puts 'I love Study!'
  end
end

s = Student.new('a',18,1)
s.study


#类方法的扩充
class String
  def self.desc
    puts 'this is object of string'
  end
end

String.desc

#模块



