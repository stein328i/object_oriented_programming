
class Cat

    def initialize(name, food_pref, meal_time)
      @name = name
      @food_pref = food_pref
      @meal_time = meal_time
    end

    def eats_at
      if @meal_time >= 7
        "eat at #{@meal_time} AM"
      else
        "eat at #{@meal_time} PM"
      end
    end
end

p cat1 = Cat.new('mimi', 'sushi', 3)
p "mimi #{cat1.eats_at}"

p cat2 = Cat.new('tony', 'hotdog', 3)
p "tony #{cat2.eats_at}"
