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

	# test "should create product" do
	#   assert_difference('Product.count') do
	#     post products_url, params: { name: 'Fruity Pebbles' }
	#   end
	 
	#   assert_redirected_to product_path(Product.last)
	# end
  

end