puts 'Добрый день. Пожалуйста, введите своё любимое число:'
loop do
  a = gets.to_i
    if a==0
      puts 'Я подожду...'
    else
      b = a.to_i+1
      puts 'Ваше любимое число - ' + a
      puts 'Возможно, вам понравится число ' + b.to_s
      i=1
    end#if a==''
  else#if a == a.swapcase
    puts 'Возможно, вы ввели не число. Попробуйте ещё раз:'
  end#if a == a.swapcase
      puts "Ваше любимое число - #{a}\nВозможно, вам понравится число #{a+1}"
     
      break
    end#if a == a.swapcase
end

#  a = 5
#  puts "#{a.class}"
#  Fixnum
