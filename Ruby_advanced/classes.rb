# Self e equivalente ao this do Java
# Initialize e o nome do metodo construtor

class Conta
  attr_accessor :saldo, :nome

  def initialize(nome)
    self.saldo = 0.0
    self.nome = nome
  end 

  def deposita(valor)
    self.saldo += valor 
    puts "Depositando a quantia de #{valor} reais."
  end
end

c = Conta.new('Elias')
# É preciso inicializar a variavel saldo, caso contrário não sera possivel somar com o valor de deposito
c.deposita(1000.00)
puts "Agora o saldo do cliente #{c.nome} é  de R$ #{c.saldo}"

c.deposita(1000.00)
puts "Agora o saldo do cliente #{c.nome} é  de R$ #{c.saldo}"