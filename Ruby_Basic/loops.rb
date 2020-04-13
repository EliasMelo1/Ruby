# O 'i' é um array || É como se o time contasse quantas vezes ele roda
# 5.times do |i|
#   puts 'Repetindo a mensagem ' + i.to_s + ' vez(es).'
# end

# init = 0
# while init<=10 do
#   puts 'Repetindo a mensagem ' + init.to_s + ' vez(es).'
#   init +=1
# end

# for funciona como o time nesse exmplo ele começa no 0 e vai até o 9 (printando 10 vezes)
# for item in (0...10) do
#   puts 'Repetindo a mensagem ' + item.to_s + ' vez(es).'
# end

# ==== Arrays ==== #
vingadores = ['Iron Man', 'Hulk', 'Thor', 'Falcao'] 

vingadores.each do |v|
  puts "O nome do vingador é " + v
end