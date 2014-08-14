puts "***** vegetarian is loaded"

class Vegetarian < Person
  attr_accessor :veg_status
  @@allergies = /meat|turkey|ham|pepperoni|gluten|pasta/

  def initialize(name, veg_status)
    super(name)
    @veg_status = veg_status
  end
end

salad = ['lettuce', 'tomato', 'onion', 'ranch']
dennys_breakfast = ['pancakes', 'toast', 'eggs']
pizza = ['cheese', 'sauce', 'gluten', 'pepperoni']
sandwich = ['bread', 'turkey', 'cheese', 'eggs' 'mayo']

maria = Vegetarian.new('maria', 'super veggie')
maria.eat(dennys_breakfast, maria.allergies)
maria.eat(sandwich, maria.allergies)