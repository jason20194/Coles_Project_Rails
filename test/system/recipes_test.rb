require "application_system_test_case"

class RecipesTest < ApplicationSystemTestCase
  setup do
    @recipe = recipes(:one)
  end

  test "visiting the index" do
    visit recipes_url
    assert_selector "h1", text: "Recipes"
  end

  test "creating a Recipe" do
    visit recipes_url
    click_on "New Recipe"

    fill_in "Category", with: @recipe.category_id
    fill_in "Cook time", with: @recipe.cook_time
    fill_in "Difficulty", with: @recipe.difficulty
    check "Featured" if @recipe.featured
    fill_in "Image url", with: @recipe.image_url
    fill_in "Ingredients", with: @recipe.ingredients
    fill_in "Ingredients link", with: @recipe.ingredients_link
    fill_in "Method", with: @recipe.method
    fill_in "Name", with: @recipe.name
    fill_in "Prep time", with: @recipe.prep_time
    fill_in "Serves", with: @recipe.serves
    click_on "Create Recipe"

    assert_text "Recipe was successfully created"
    click_on "Back"
  end

  test "updating a Recipe" do
    visit recipes_url
    click_on "Edit", match: :first

    fill_in "Category", with: @recipe.category_id
    fill_in "Cook time", with: @recipe.cook_time
    fill_in "Difficulty", with: @recipe.difficulty
    check "Featured" if @recipe.featured
    fill_in "Image url", with: @recipe.image_url
    fill_in "Ingredients", with: @recipe.ingredients
    fill_in "Ingredients link", with: @recipe.ingredients_link
    fill_in "Method", with: @recipe.method
    fill_in "Name", with: @recipe.name
    fill_in "Prep time", with: @recipe.prep_time
    fill_in "Serves", with: @recipe.serves
    click_on "Update Recipe"

    assert_text "Recipe was successfully updated"
    click_on "Back"
  end

  test "destroying a Recipe" do
    visit recipes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Recipe was successfully destroyed"
  end
end
