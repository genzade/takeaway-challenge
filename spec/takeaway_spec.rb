require 'takeaway'

describe Takeaway do
 subject(:takeaway) { described_class.new(menu: menu, order: order) }

 let(:menu) { double :menu, select: selected_menu }
 let(:order) { instance_double "Order", total: 28.50}
 let(:selected_menu) { "pizza: £10, curry: £8.50" }

 let(:dishes) { {pizza: 2, curry: 1} }


 describe '#view' do

  it 'shows the menu with dishes and prices' do
    expect(takeaway.select_menu).to eq (selected_menu)
  end
 end

 it 'order available dishes' do
  expect(order).to receive(:add).twice
  takeaway.place_order(dishes)
 end

 it 'gives total' do
  allow(order).to receive(:add)
  total = takeaway.place_order(dishes)
  expect(total).to eq(28.50)
 end

end