if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

print "Чтобы начать игру, введите ваше имя:"
name = gets.force_encoding("UTF-8").chomp
puts "Привет #{name}!", "Начнем игру!"
puts "Я загадал число от 1 до 100, попробуй отгадать за 7 попыток!"
number = rand(100) + 1
popytka = 0
won = false
while 7-popytka >0  && !won
  puts "У вас осталось #{7 - popytka} попыток!"
  puts "Введите число:"
  guess = gets.to_i
  if guess > number
    puts "Ваше число больше загаданного"
  elsif guess < number
    puts "Ваше число меньше загаданного"
  elsif guess == number
    puts "Вы угадали!"
    won = true
  end
  popytka += 1

end

unless won
  puts "Ваши попытки закончились. Было загадано число #{number}"
end