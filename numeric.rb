class Numeric
  def gram
    self
  end
  alias_method :grams, :gram
  
  def pound
    self * 453.59237
  end
  alias_method :lb, :pound
  alias_method :lbs, :pound
  alias_method :pounds, :pound
  
end