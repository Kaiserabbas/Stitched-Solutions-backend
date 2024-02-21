require "test_helper"

class FashionDesignsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fashion_design = fashion_designs(:one)
  end

  test "should get index" do
    get fashion_designs_url, as: :json
    assert_response :success
  end

  test "should create fashion_design" do
    assert_difference("FashionDesign.count") do
      post fashion_designs_url, params: { fashion_design: { description: @fashion_design.description, image_url: @fashion_design.image_url, price: @fashion_design.price, title: @fashion_design.title } }, as: :json
    end

    assert_response :created
  end

  test "should show fashion_design" do
    get fashion_design_url(@fashion_design), as: :json
    assert_response :success
  end

  test "should update fashion_design" do
    patch fashion_design_url(@fashion_design), params: { fashion_design: { description: @fashion_design.description, image_url: @fashion_design.image_url, price: @fashion_design.price, title: @fashion_design.title } }, as: :json
    assert_response :success
  end

  test "should destroy fashion_design" do
    assert_difference("FashionDesign.count", -1) do
      delete fashion_design_url(@fashion_design), as: :json
    end

    assert_response :no_content
  end
end
