require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  test "Contentful Collection" do

    assert Recipe.all.load.is_a? Contentful::Array
  end

  test "Contentful Single Entry" do

    assert Recipe.all.first.is_a? Recipe
  end
end
