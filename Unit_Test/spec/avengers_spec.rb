# Guia de referencia para validações: https://qaninja.io/guia-de-referencia-para-validacoes-do-rspec/
class AvengersHeadQuarter
  attr_accessor :list

  def initialize 
    self.list = []
  end

  def put(hero)
    self.list.push(hero)
  end

end

# TDD - começamos o desenvolvimento pelo teste (o desenvolvimento é guiado pelo teste)
describe AvengersHeadQuarter do
  
  it 'Deve adicionar um vingador' do
    hq = AvengersHeadQuarter.new
    hq.put('Hulk')
    
    expect(hq.list).to eql ['Hulk']
  end

  it 'Deve adicionar uma lista de vingadores' do
    hq = AvengersHeadQuarter.new 
    hq.put('Thor')
    hq.put('Hulk')
    hq.put('Iron man')
    result = hq.list.size > 0
    # Size só funciona para lista, sendo uma lista ele precisa ter 1 ou mais itens
    # expect(hq.list.size).to be > 0
    
    expect(result).to be true
  end

  it 'Deve conter um vingador aicionado de vários adicionados' do
    hq = AvengersHeadQuarter.new 
    hq.put('Thor')
    hq.put('Hulk')
    hq.put('Iron man')
    
    # Include para sabe algo esta contido na minha lista
    expect(hq.list).to include 'Thor'
  end

  it 'Thor deve ser o primeiro da Lista' do
    hq = AvengersHeadQuarter.new 
    hq.put('Thor')
    hq.put('Hulk')
    hq.put('Iron man')

    # expect(hq.list[0]).to eql 'Thor'
    expect(hq.list).to start_with('Thor')
  end

  it 'Iron man deve ser o ultimo da Lista' do
    hq = AvengersHeadQuarter.new 
    hq.put('Thor')
    hq.put('Hulk')
    hq.put('Iron man')

    expect(hq.list).to end_with('Iron man')
  end

  it 'deve conter o sobrenome' do
    avenger = 'Peter Parker' 
    expect(avenger).to match(/Parker/)
    expect(avenger).not_to match(/Elias/)  

  end

end


