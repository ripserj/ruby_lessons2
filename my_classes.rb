class Humans
  attr_accessor :fat, :name
  def enchant(name)
    "#{name} начал(а) махать руками и призывать силы вселенных"
  end
  def died(nums)
    puts "#{name} распалась на #{nums} кусочков по #{format("%.4f", @fat/nums)} кг"
  end

end

class Mag < Humans
  attr_accessor :spell


  def initialize(kuku)
    @kuku = kuku
  end
  def enchant(target)
    add_text = super(target)
    puts "#{add_text} \n #{@name} cast spell #{@spell} on #{target}"
    puts @kuku
    return true
  end
  def to_s
    "Имя волшебника: #{@name}"

  end
end

merlin = Mag.new('kukus')
merlin.name = "Merlin"
merlin.fat = 70.0
puts merlin.fat

morgana = Mag.new('kakas')
morgana.name = "Morgana"
morgana.fat = 65.0
merlin.spell = "Yad"
if merlin.enchant(morgana.name)
  morgana.died(131)
end

class Buldog
  attr_accessor :name, :golos

  def initialize(name, golos)
    @name = name
    @golos = golos

  end

  def self.wow(name = "Aro", param = "Waw!")
    object_name = Buldog.new(name, param)
    puts param
    return object_name
  end
end

new_dog = Buldog.wow('Adddo', "Rrrrr")
puts new_dog.name

arr = ['a', 2, 'g']

puts arr[0].capitalize