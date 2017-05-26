#case 语句
=begin

case object
when condotion
xxxxx
end

=end

a = 10

case a
  when 1
    p 1
  when 2
    p 2
  when 3..10
    p '3=>10'
  else
    p 'else'
end

#循环
counter = 0
loop do
  p 1
  counter += 1
  break if counter == 3
end

while true
  input = gets().chomp.to_i
  break if input==0   #终止循环
  next  if input==1   #python => continue
  puts 'loop once'
end