class Hoge
  TEISUU = 100
  @@fullName = ""
  def initialize(_name = "ほげ")
    @name = _name
    @@fullName = _name
  end
  attr_accessor :name
  attr_accessor :fullName

  def getFullName()
    return @@fullName
  end

  def Exec()
    puts("Hoge::Exec()")
  end

  def ExecArgs(a, b, c)
    # @つけなくても変数はつかえるみたい
    puts("Hoge::ExecArgs() #{@name}")
  end
end

class Foo < Hoge
  def initialize(_name = "ふー")
    super
    # @name = _name
  end

  def Exec()
    puts("Foo::Exec()")
    super
  end
end

hoge = Hoge.new
puts hoge.name
hoge.Exec
hoge.ExecArgs 1, 2, 3

puts "フルネーム" + hoge.getFullName()

foo = Foo.new "ふーー"
puts foo.name
foo.Exec
foo.ExecArgs 1, 2, 3

puts "フルネーム" + hoge.getFullName()
puts "フルネーム" + foo.getFullName()

# Hoge::TEISUU = 20 #上書きできてしまう。ただWarningは出してくれる。
puts "定数" + "#{Hoge::TEISUU}"