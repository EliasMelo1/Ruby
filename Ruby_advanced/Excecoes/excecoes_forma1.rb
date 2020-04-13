# Essa estrutura é equivalente ao try catch do Java/C#/Java

begin
  # Devo tentar alguma coisa
  file = File.open('./ola.txt') 
  if file
    puts file.read
  end
rescue Exception => e
  # Obter um possivel erro
  puts e.message
  puts e.backtrace
end