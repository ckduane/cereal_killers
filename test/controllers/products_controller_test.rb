require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should show product" do
    get products_url(Product.first)
    assert_response :success
  end

end