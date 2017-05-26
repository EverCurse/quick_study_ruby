#ruby 自动类型的识别 鸭子类型 动态语言
# duck type

#理论
=begin
基本数据类型
  数字
  文本
  范围
  符号
  bool nil

=end

#实践

a=1
p a.methods
p a.instance_of?(Integer)#判断是否为Integer的实例
p a.to_s
p a.instance_of?(String)

b=1.2
p b.instance_of?(Float)

p (0.4-0.3)

p "hello,#{a+b}" #插值操作

#三种字符串拼接的方式 不建议使用 str+='xxx' 性能问题
p "hello" + ",world"
p "hello" << ",wolrd"
p "hello".concat(",world")

p "ruby" * 3
#p "hello".methods

a = ''
p a.nil?
p a.empty?


