puts "Insira o lado A:"
A = gets.to_i
puts "Insira o lado B:"
B = gets.to_i
puts "Insira o lado C:"
C = gets.to_i
if (((B ** 2) + (C ** 2) == (A ** 2)) || ((A ** 2) + (C ** 2) == (B ** 2)) || ((B ** 2) + (A ** 2) == (C ** 2))) then
   puts "O seu triangulo eh um triangulo retangulo"
 else
   puts "O seu triangulo nao eh um triangulo retangulo"
 end
