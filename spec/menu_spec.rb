require 'menu'

describe Menu do
  subject(:menu) { described_class.new(dishes) }
  
  let(:dishes) do {
    pizza: 10,
    curry: 8.50
    }
  end

  it 'shows dishes and prices' do
    expect(menu.dishes).to eq(dishes)
  end

  it 'shows the menu with dishes and prices' do
    selected_menu = "Pizza £10.00, Curry £8.50"
    expect(menu.select).to eq(selected_menu)
  end

  it 'is on the menu?' do
    expect(menu.has_dish?(:pizza)).to be true
  end

  it 'is not on the menu?' do
    expect(menu.has_dish?(:rissotto)).to be false
  end

  it 'calculates the price' do
    expect(menu.price(:pizza)).to eq(dishes[:pizza])
  end

end