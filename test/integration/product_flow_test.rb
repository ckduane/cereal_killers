require 'test_helper'

class ProductFlowTest < ActionDispatch::IntegrationTest
  test "can see the welcome page" do
    get "/"
    assert_select "h1", "Your next cereal awaits"
  end

  test "can create product" do
		get "/products/new"
		assert_response :success

		post "/products",
			params: { product: { name: 'Lucky Charms' } }
		assert_response :redirect
		follow_redirect!
		assert_response :success
		assert_select "h1", "Lucky Charms"
	end

end