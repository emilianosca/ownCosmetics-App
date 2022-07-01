require "test_helper"

class ColorSwatchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @color_swatch = color_swatches(:one)
  end

  test "should get index" do
    get color_swatches_url
    assert_response :success
  end

  test "should get new" do
    get new_color_swatch_url
    assert_response :success
  end

  test "should create color_swatch" do
    assert_difference("ColorSwatch.count") do
      post color_swatches_url, params: { color_swatch: { colorHexa: @color_swatch.colorHexa, colorName: @color_swatch.colorName, idFormula: @color_swatch.idFormula, idUser: @color_swatch.idUser } }
    end

    assert_redirected_to color_swatch_url(ColorSwatch.last)
  end

  test "should show color_swatch" do
    get color_swatch_url(@color_swatch)
    assert_response :success
  end

  test "should get edit" do
    get edit_color_swatch_url(@color_swatch)
    assert_response :success
  end

  test "should update color_swatch" do
    patch color_swatch_url(@color_swatch), params: { color_swatch: { colorHexa: @color_swatch.colorHexa, colorName: @color_swatch.colorName, idFormula: @color_swatch.idFormula, idUser: @color_swatch.idUser } }
    assert_redirected_to color_swatch_url(@color_swatch)
  end

  test "should destroy color_swatch" do
    assert_difference("ColorSwatch.count", -1) do
      delete color_swatch_url(@color_swatch)
    end

    assert_redirected_to color_swatches_url
  end
end
