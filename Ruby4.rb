a = '1427  0
4
   876652098643267843
5276538'
array = a.split(" ")
array.each do |i|
  i = Math.sqrt(i.to_f)
  puts "%.4f" % i
end

#{}"Num is: #{array[1].round(4)}"  # Num is 1.23
