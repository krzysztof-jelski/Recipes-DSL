require_relative "../recipe.rb"


describe Recipe do
  it "should have name" do
     	recipe = Recipe.new "Spicy bread"
      recipe.name.should eql "Spicy bread"
  end
  it "should consist of ingredients" do
    recipe = Recipe.new "Spicy bread"
    recipe.consists_of {
      add (200.grams.of Flour)
    }
    recipe.ingredients.should include Ingredient.new('Flour', 200)
  end
end

describe "grams" do
  it "should be Numeric" do
    1.gram.should be_a_kind_of Numeric
  end
  
  it "can be plural" do
    200.grams.should == 200.gram
  end
end

describe "pound" do
  it "should weigh 453 grams" do
    1.pound.should == 453.59237.grams
  end
  
  it "can be called lb or lbs" do
    1.pound.should == 1.lb
    1.pound.should == 1.lbs
  end
  
  it "can be plural" do
    1.pound.should == 1.pounds
  end
end

describe "Ingredient created from numeric" do
    subject { 215.grams.of "Flour" }
    it { should be_a_kind_of Ingredient }
    its(:quantity) { should == 215 }
    its(:name) { should == "Flour" }
end


