def checa_multiplo_3(num)
  if num % 3 == 0 then
    return true
  end
  return false
end

def checa_multiplo_5(num)
  if num % 5 == 0 then
    return true
  end
  return false
end

num = 1
while num <= 100 do
  if checa_multiplo_3(num) && checa_multiplo_5(num) then
    print "FizzBuzz "
  elsif checa_multiplo_3(num) && !checa_multiplo_5(num) then
    print "Fizz "
  elsif !checa_multiplo_3(num) && checa_multiplo_5(num) then
    print "Buzz "
  else
    print "#{num} "
  end
  num += 1
end
puts ""
