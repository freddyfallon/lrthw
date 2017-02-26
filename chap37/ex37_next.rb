(0..20).each do |x|
  if x < 10
  puts x.to_s + " is a small number"
  next # not really sure this is better than elsif or else?
  end
  puts x.to_s + " is a big number"
end
