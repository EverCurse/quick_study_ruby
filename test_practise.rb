
#homework

#work 1:输入三个数字 判断是否为三角形
def judge_triagle()
  data_list = []
  side_one = gets().to_i
  side_two = gets().to_i
  side_three = gets().to_i
  data_list.push(side_one)
  data_list.push(side_two)
  data_list.push(side_three)
  data_list.sort!{|x,y|
    x <=> y
  }
  return data_list
end

res = judge_triagle()
max = res.pop
mid = res.pop
min = res.pop

if mid+min <= max
  p 'this is not a triangle'
elsif mid**2+min**2==max**2
  p 'this a zhijiao triangle'
elsif mid==max && max==min
  p 'this is a dengbian'
elsif mid==min && mid!=max
  p 'this is a dengyao'
end