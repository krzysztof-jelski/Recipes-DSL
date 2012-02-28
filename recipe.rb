require_relative "numeric.rb"

class Recipe
  include IngredientBuilder
  attr_accessor :name, :ingredients
  def initialize(name)
    @name = name
    @ingredients = Array.new
  end
  
  def consists_of &block
    instance_eval &block    
  end
  
  def add(ingredient)
    @ingredients << ingredient
  end
end