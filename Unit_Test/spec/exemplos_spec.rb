# assim como no JS decribe é uma suite de testes (coleção) e it são meus cenários de teste
describe 'suite rspec' do 
  it 'soma de valores' do
    soma = 10 + 15
    expect(soma).to eql 25 
  end
  # modificar valor esperado (25) para observar comportamento de sucesso e falha do rspec
end