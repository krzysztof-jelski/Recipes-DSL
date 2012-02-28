require_relative "../nutrition_profile_definition.rb"

describe NutritionProfileDefinition do
  it "should polish text" do
    input = "ingredient \"flour\" has Protein=11.5, Lipid=1.45, Sugars=1.12, Calcium=20, and Sodium=0"
    expected = 'ingredient "flour" ,Protein=>11.5, Lipid=>1.45, Sugars=>1.12, Calcium=>20, Sodium=>0'
    subject.polish_text(input).should == expected
  end
  
  it "should create profile from textual definition" do
    result = subject.process_definition("ingredient \"flour\" has Protein=11.5, Lipid=1.45, Sugars=1.12, Calcium=20, and Sodium=0")
    result.should be_kind_of NutritionProfile
    result.name.should == "flour"
    result.protein.should == 11.5
    result.lipid.should == 1.45
    result.sugars.should == 1.12
    result.calcium.should == 20
    result.sodium.should == 0
  end
end