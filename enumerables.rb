require 'pry'

def spicy_foods
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end


def get_names(spicy_foods)
  names = spicy_foods.collect do |name|
    name[:name]
  end
end


def spiciest_foods(spicy_foods)
  spicy = spicy_foods.select do |heat|
    heat[:heat_level] > 5
  end
end


def print_spicy_foods(spicy_foods)
  emojis = spicy_foods.map do |spicy_food|
    "#{spicy_food[:name]} (#{spicy_food[:cuisine]}) | Heat Level: #{'🌶' * spicy_food[:heat_level]}"
  end
  puts emojis
end


def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  type_of = spicy_foods.find do |type|
    type[:cuisine] == cuisine
  end
end


def sort_by_heat(spicy_foods)
  sorted = spicy_foods.sort_by{|spicy_food| spicy_food[:heat_level]}
end


def print_spiciest_foods(spicy_foods)
  greater_than_five = spicy_foods.select do |heat|
    heat[:heat_level] > 5
  end
  output = greater_than_five.map do |spicy_food|
    "#{spicy_food[:name]} (#{spicy_food[:cuisine]}) | Heat Level: #{'🌶' * spicy_food[:heat_level]}"
  end
  puts output
end


def average_heat_level(spicy_foods)
  sum = spicy_foods.sum do |heat|
    heat[:heat_level]
  end
  average = sum / spicy_foods.length
end
