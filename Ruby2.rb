puts 'Добрый день. Пожалуйста, введите своё любимое число:'
i=0

while i == 0
  a = gets.chomp

  if a == a.swapcase
    if a==''
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

end#while
