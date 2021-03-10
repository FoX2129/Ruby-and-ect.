puts 'Добрый день. Пожалуйста, введите своё любимое число:'
loop do
  a = gets.to_i
    if a==0
      puts 'Я подожду...'
    else
      puts "Ваше любимое число - #{a}\nВозможно, вам понравится число #{a+1}"
      break
    end#if a == a.swapcase
end


#  a = 5
#  puts "#{a.class}"
#  Fixnum
