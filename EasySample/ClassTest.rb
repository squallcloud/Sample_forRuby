class Hoge
  def initialize()
    @name = "ほげ"
  end
  def initialize(_name)
    @name = _name
  end
  attr_accessor :name

  def Exec()
    puts("Hoge::Exec()")
  end
end

# hoge = Hoge.new()
# hoge.Exec()
# puts(hoge.name)

foo = Hoge.new("ホゲ")
puts(foo.name)