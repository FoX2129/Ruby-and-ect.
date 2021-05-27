require 'csv'
a = CSV.parse(File.read("./stuf/items.csv"), headers: true)
puts a,"\n___________________________________________"
a = File.new("./stuf/items.csv")
lines = a.readlines
puts lines[2]
