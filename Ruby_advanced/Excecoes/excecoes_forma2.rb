# Metodo com tratamento de excecao, irei tentar fazer um soma, se por ventura occorer algum erro eu imprimo no rescue
def soma(n1, n2)
  n1 + n2
rescue Exception => error
  puts "Erro ao executar a soma"
end

soma('10', 5)