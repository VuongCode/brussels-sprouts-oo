#YOUR CODE GOES HERE

class Ingredient

  def initialize(quantity,unit,name)
    @quantity = quantity.to_f
    @unit = unit.to_s
    @name = name.to_s
  end

  def summary
    "#{@quantity} #{@unit} #{@name}"
  end
end

name = "Roasted Brussels Sprouts"

ingredients = [
    Ingredient.new(1.5, "lb(s)", "Brussels sprouts").summary,
    Ingredient.new(3.0, "tbspn(s)", "Good olive oil").summary,
    Ingredient.new(0.75, "tspn(s)", "Kosher salt").summary,
    Ingredient.new(0.5, "tspn(s)", "Freshly ground black pepper").summary
]

instructions = [
    "Preheat oven to 400 degrees F.",
    "Cut off the brown ends of the Brussels sprouts.",
    "Pull off any yellow outer leaves.",
    "Mix them in a bowl with the olive oil, salt and pepper.",
    "Pour them on a sheet pan and roast for 35 to 40 minutes.",
    "They should be until crisp on the outside and tender on the inside.",
    "Shake the pan from time to time to brown the sprouts evenly.",
    "Sprinkle with more kosher salt ( I like these salty like French fries).",
    "Serve and enjoy!"
    ]

class Recipe

  def initialize(name,instructions,ingredients)
    @name = name
    @instructions = instructions
    @ingredients = ingredients
  end

  def summary
    puts "Name: #{@name}"
    puts ""
    puts "Ingredients"
    @ingredients.each do |food|
      puts "- #{food}"
    end
    puts ""
    puts "Instructions"
    i = 0
    @instructions.each do |step|
      i += 1
      puts "#{i}. #{step}"
    end
    puts ""
  end
end

ingredient = Ingredient.new(47.0, "lb(s)", "Brussels Sprouts")
puts ingredient.summary
puts ""

recipe = Recipe.new(name, instructions, ingredients)
puts recipe.summary
