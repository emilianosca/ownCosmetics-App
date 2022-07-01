require "application_system_test_case"

class ColorSwatchesTest < ApplicationSystemTestCase
  setup do
    @color_swatch = color_swatches(:one)
  end

  test "visiting the index" do
    visit color_swatches_url
    assert_selector "h1", text: "Color swatches"
  end

  test "should create color swatch" do
    visit color_swatches_url
    click_on "New color swatch"

    fill_in "Colorhexa", with: @color_swatch.colorHexa
    fill_in "Colorname", with: @color_swatch.colorName
    fill_in "Idformula", with: @color_swatch.idFormula
    fill_in "Iduser", with: @color_swatch.idUser
    click_on "Create Color swatch"

    assert_text "Color swatch was successfully created"
    click_on "Back"
  end

  test "should update Color swatch" do
    visit color_swatch_url(@color_swatch)
    click_on "Edit this color swatch", match: :first

    fill_in "Colorhexa", with: @color_swatch.colorHexa
    fill_in "Colorname", with: @color_swatch.colorName
    fill_in "Idformula", with: @color_swatch.idFormula
    fill_in "Iduser", with: @color_swatch.idUser
    click_on "Update Color swatch"

    assert_text "Color swatch was successfully updated"
    click_on "Back"
  end

  test "should destroy Color swatch" do
    visit color_swatch_url(@color_swatch)
    click_on "Destroy this color swatch", match: :first

    assert_text "Color swatch was successfully destroyed"
  end
end
