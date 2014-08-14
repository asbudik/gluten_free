puts "***** vegan is loaded"

class Vegan < Vegetarian
  attr_accessor :vegan_status
  @@allergies = /meat|turkey|ham|pepperoni|gluten|pasta|eggs|cheese/

  def initialize(name, veg_status, vegan_status)
    super(name, veg_status)
    @vegan_status = vegan_status
  end
end

salad = ['lettuce', 'tomato', 'onion', 'ranch']
dennys_breakfast = ['pancakes', 'toast', 'eggs']
pizza = ['cheese', 'sauce', 'gluten', 'pepperoni']
sandwich = ['bread', 'turkey', 'cheese', 'eggs' 'mayo']

annie = Vegan.new('annie', 'ultra vegger', 'intermediary vegan')
annie.eat(salad, annie.allergies)
annie.eat(dennys_breakfast, annie.allergies)