# require_relative 'menu'

class Takeaway

  def initialize(menu:)
    @menu = menu
  end

  def select_menu
    menu.select
  end

  private

  attr_reader :menu
end

# menu.each { |food, price| puts "#{food}: £#{price.to_f}"}