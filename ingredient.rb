class Ingredient
  attr_accessor :quantity
  attr_accessor :name

  def initialize(name, quantity = 0)
    @name = name
    @quantity = quantity
  end
  
  def == other
    @name == other.name && @quantity == other.quantity
  end
end


module IngredientBuilder
  def self.append_features(target)
    def target.const_missing(sym)
      Ingredient.new(sym.to_s)
    end
    super
  end
end

