class Conta
  attr_accessor :saldo, :mensagem
  
  def initialize(saldo)
    self.saldo = saldo
  end
  
  def saca(valor, max)
    if(valor > self.saldo)
      return self.mensagem = 'Saldo insuficiente para saque :('
    elsif(valor>max)
      puts 'Limite maximo por saque é de R$ ' + max.to_s
      return self.mensagem ='Limite maximo por saque é de R$ ' + max.to_s
    else
      self.saldo -= valor
    end
  end
  

end

# Super irá procurar um methodo com o mesmo nome de onde esta sendo executado porém fara essa procura na classe pai
class ContaCorrente < Conta
  def saca(valor, max = 700)
    super
  end
end

class ContaPoupanca < Conta
  def saca(valor, max = 500)
    super
  end
end
