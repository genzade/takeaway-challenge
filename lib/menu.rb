class Menu

  attr_reader :dishes

  def initialize(dishes)
    @dishes = dishes
  end

  def select
    dishes.map { |title, price|
      "%s £%.2f" % [title.to_s.capitalize, price]
    }.join(", ")
  end
end