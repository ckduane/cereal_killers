require 'test_helper'

class ProductFlowTest < ActionDispatch::IntegrationTest
  test "can see the welcome page" do
    get "/"
    assert_select "h1", "Your next cereal awaits"
  end

end