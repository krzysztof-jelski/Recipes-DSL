require_relative 'nutrition_profile.rb'
class NutritionProfileDefinition
  
  class << self
    def const_missing(sym)
      sym.to_s.downcase
    end
  end
  
  def ingredient(name, ingredients)
    NutritionProfile.create_from_hash name, ingredients
  end
  
  def process_definition(definition)
    instance_eval(polish_text(definition))
  end
  
  def polish_text(definition_line)
    polished_text = definition_line.clone
    polished_text.gsub!(/=/, '=>')
    polished_text.sub!(/and /, '')
    polished_text.sub!(/has /, ',')
  end
end