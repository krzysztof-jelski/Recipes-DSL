require_relative '../nutrition_profile.rb'

describe NutritionProfile do
  
  it "should have zeros" do
    subject.to_s.should == "\tProtein: 0\n\tLipid: 0\n\tSugars: 0\n\tCalcium: 0\n\tSodium: 0\n"
  end
end