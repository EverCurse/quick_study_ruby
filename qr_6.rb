class Person
  Version = '1.0'  #类常量 一般标记版本 或者恒定的值
  attr_accessor :name  #设置get set方法
  attr_reader :age     #age属性只是可读 不能修改
  def initialize(name,age)
    @name = name
    @age = age
  end
  def describe()
    p "I am #{@name}"
  end

  private   #类的访问控制 外界无法访问
  def pri_func()
    p 'private method'
  end

  def self.say   #类方法
    puts "人都可以说话"
  end
end


class Male < Person
  attr_accessor :gender
  def initialize(gender)
    @gender = gender
  end

  def uniq
    puts "has tools"
  end
end

k = Person.new('Kylin',18)
k.describe
p k.name
k.name = 'tom'
p k.name
p k.age
#k.age = 19   #age只读 无法修改
#p k.age
p Person::Version  #类常量用 :: 来调用   类方法也是双冒号  实例方法只能用.

#k.pri_func  #private方法  外界无法访问
#方法的访问控制  public private

Person.say


m = Male.new('男')
m.uniq

