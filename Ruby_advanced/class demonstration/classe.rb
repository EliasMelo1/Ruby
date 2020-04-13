# Ruby é um linguagem considerada puramente orientada a objeto 
# Porque no ruby tudo são objetos

# Classe possui atributos e métodos
# Caracteristicas e Ações 

# Carro: Placa, Modelo, Nome, Marca, Cor, Quantidade de portas
# Ligar, Businar, Parar, etc...

# ==== Aqui estamos criando uma classe ====#
# attr_acessor => isso quer dizer que estou criando um atributo que consigo ler e definir valor
class Carro
  attr_accessor :nome

  def ligar 
    puts 'O cara está pronto para iniciar o trajeto.'
  end
end
# ==== Aqui estamos encerrando a classe  ====#

# Aqui estamos criando um novo objeto
civic = Carro.new
# Aqui estamos atribuindo um nome do tipo String para o Objeto
civic.nome = 'Civic'

# Verificando o tipo da variavel/objeto
puts civic.class

# Utilizando um método 
civic.ligar

puts civic.nome