puts "***** gluten (person) is loaded"

class Person
  attr_accessor :name, :stomach
  @@allergies = /gluten|pasta/

  def initialize(name)
    @name = name
    @stomach = []
  end

  def eat(food_array, allergies)
    food_array.each do |item|
      if item.match(allergies)
        puts "ate #{item} and..."
        allergy_error()
        break
      else
        @stomach.push(item)
        puts "ate #{item}...delicious!"
      end
    end
  end

  def allergies
    @@allergies
  end

  def allergy_error
    puts "You don't react well..."
    @stomach.length.times do
      food_item = @stomach.pop
      puts "#{name} lost their #{food_item}"
    end
    return puts "AllergyError"
  end
end

salad = ['lettuce', 'tomato', 'onion', 'ranch']
dennys_breakfast = ['pancakes', 'toast', 'eggs']
pizza = ['cheese', 'sauce', 'gluten', 'pepperoni']
sandwich = ['bread', 'turkey', 'cheese', 'eggs' 'mayo']

john = Person.new('john')
john.eat(sandwich, john.allergies)
john.eat(pizza, john.allergies)