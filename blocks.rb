def block_insert(&my_block)
  puts 'stroka'
  my_block.call("EKLMN", "OPRST")
  puts 'stroka'
end


block_insert() do |text1, text2|
  puts "Bebebe"
  puts text1, text2
end

block_insert() do
  puts "Hoho"
end


def total(prices)
  amount = 0
  prices.each do
  |x|
    amount += x
  end
  puts amount
end

total([1, 32, 12, 12, 4, 22])