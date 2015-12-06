require 'takeaway'

describe Takeaway do
 subject(:takeaway) { described_class.new(menu: menu) }

 subject(:menu) { double :menu, select: selected_menu }
 let(:selected_menu) { "pizza: £10, curry: £8.50" }

 describe '#view' do

    it 'shows the menu with dishes and prices' do
      expect(takeaway.select_menu).to eq (selected_menu)
    end

  end
end