class NutritionProfile
  attr_accessor :name, :protein, :lipid, :sugars, :calcium, :sodium
  
  def initialize(name="", protein=0, lipid=0, sugars=0, calcium=0, sodium=0)
    @name = name
    @protein, @lipid, @sugars, @calcium, @sodium =  protein, lipid, sugars, calcium, sodium
  end
  
  def to_s()
    <<-profile
\tProtein: #{@protein}
\tLipid: #{@lipid}
\tSugars: #{@sugars}
\tCalcium: #{@calcium}
\tSodium: #{@sodium}
    profile
  end
end