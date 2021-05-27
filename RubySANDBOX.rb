#git add Ruby4.rb
#git commit -m "first commit"
#git branch -M main
#git remote add origin https://github.com/FoX2129/Ruby-and-ect..git
#или        git push
#FoX2129
#Arcady112100

#def sayMoo # скажи: "Му"
#puts 'мууууууу...'
#end

#git checkout main
#git branch
#git add Name.type
#git commit -m "Test"
#git push -u origin develop

#git commit --amend -m "обновленный комментарий к коммиту"
# Отредактируйте файлы hello.py и main.py
# git add hello.py git commit
# Вспомните, что вы забыли добавить изменения из файла main.py
# git add main.py git commit --amend --no-edit

# sqlite3
# rails server

# a = [ 1, 'cat', 3.14 ] # массив из трех элементов
# a[0] # обращение к первому элементу (1)
# a[2] = nil
# теперь массив имеет следующий вид: [ 1, 'cat', nil ]
# a = %w{ муравей пчела кот собака лось } - массив из слов.

# def say_goodnight(name)
def method(a = 21)
  puts a
end
#puts '0'.to_f == 0

# result = 'Спокойной ночи, ' + name
# return result
# end
# puts say_goodnight('Капиталист')
# /home/fox2129/projects/rails/demo/app/views/products/show.html.erb
# /home/fox2129/projects/rails/demo/app/views/products/index.html.erb
# demo/app/controllers/products_controller.rb
# http://localhost:3000/store/index

# depot> rake db:rollback

#  result = 'Спокойной ночи, ' + name
#  return result
# end
# puts say_goodnight('Капиталист')

#@placed_at = Time.now
#puts order.placed_at.strftime("$b %-d, %Y %H:%M:%S")

#describe <something>
#context <when... / if... / with... / given...>

#a="Хрен с маслом"
#if a =~ /\040/
#  puts "da"
#else
#  puts  "net"
#end

#<!-- <% if @cart %>          <%= hidden_div_if(@cart.line_items.empty?, id: 'cart') do %>          <%= render @cart %>          <% end %>        <% end %> -->
#
#x = proc { return "greeting" }
#x.call

#hello_array = ['no1','no2']
#hello_array.each {|name| puts name = name.upcase}
#hello_array.map { |name| puts name  }

# hash = {_k:1, v:2}
#
# puts result = hash.map { |_k, v| v + 1 }
#
# def something(x)
#   _unused_var, used_var = something_else(x)
#   # некоторый код
# end

# puts 3.odd?
# puts 3.even?

def +(other)
  puts 123+other
end
