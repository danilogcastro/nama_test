require 'rails_helper' 

describe Sale do
  subject {
    described_class.new(description: "Some description",
                        unit_price: 10.5,
                        quantity: 3,
                        buyer: Buyer.new(name: "John Doe", address: "Fake Address"),
                        supplier: Supplier.new(name: "Fake Supplier"))
  }
  it 'precisa ter uma descrição' do
    expect(subject).to be_valid
  end
  it 'precisa contar preço unitário' do
    expect(subject).to be_valid
  end
  it 'precisa ter quantidade de itens' do
    expect(subject).to be_valid
  end
  it 'precisa ter um comprador' do
    expect(subject).to be_valid
  end
  it 'precisa ter um fornecedor' do
    expect(subject).to be_valid
  end
end