# create a mapping of counties to abbreviation
counties = {
  "Greater London" => "LDN",
  "Sussex" => "SX",
  "Kent" => "KT"
}

cities = {
  "LDN" => "London",
  "SX" => "Brighton",
  "KT" => "Canterbury"
}

cities['TW'] = "Newcastle"
cities['DT'] = "Bournemouth"

puts '-' * 10
puts "Greater London has #{cities["LDN"]}"
puts "Kent has #{cities["KT"]}"

puts '-' * 10
puts "Sussex has #{cities[counties["Sussex"]]}"

puts '-' * 10
counties.each do |county, abbrev|
  puts "#{county} is abbreviated #{abbrev}."
end

puts '-' * 10
cities.each do |county, city|
  puts "#{county} has the city #{city}."
end

puts '-' * 10
counties.each do |county, abbrev|
  city = cities[abbrev]
  puts "#{county} is abbreviated #{abbrev} and has the city #{city}."
end

puts '-' * 10
county = counties['Greater Manchester']
if !county
  puts "Sorry, no Greater Manchester."
end

city = cities['GM']
city ||= 'Does not exist'
puts "The city for the state 'GM' is #{city}"
