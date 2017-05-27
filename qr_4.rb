

=begin

代码块
异常

=end


#计算1-5000的和
sum = 0
for i in 1..5000
  sum += i
end
p sum

sum = 0
(1..5000).each do |i|
  sum += i
end
p sum


#异常处理
data1 = 100
data2 = 10
while data2>-2
  begin  #会出现异常的begin包住
    p data1/data2

  rescue Exception => e #异常处理
    p e.message
    #retry  # 这将把控制移到 begin 的开头 不过容易陷入死循环

  ensure   #无论如何都会执行
    data2 -= 1

  end
end
puts "hello"








