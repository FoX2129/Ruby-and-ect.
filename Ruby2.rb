puts 'Добрый день. Пожалуйста, введите своё любимое число:'
loop do
  a = gets.to_i
    if a==0
      puts 'Я подожду...'
    else
      b = a+1
      puts "Ваше любимое число - #{a}\nВозможно, вам понравится число #{b}"
      break
    end#if a == a.swapcase
end


#  a = 5
#  puts "#{a.class}"
#  Fixnum
