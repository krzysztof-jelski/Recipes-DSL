require_relative "../recipe.rb"
require 'rspec'


describe Recipe do
  it "should have name" do
     	recipe = Recipe.new "Spicy bread"
      recipe.name.should eql "Spicy bread"
  end
end

