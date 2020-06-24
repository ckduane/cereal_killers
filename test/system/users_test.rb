require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  test "create a user" do
  	visit products_path

  	click_on "Register"

  	fill_in "Username", with: "Test User"
  	fill_in "Email", with: "test_user@test.com"
  	fill_in "Password", with: "Test123"
  	fill_in "Password confirmation", with: "Test123"

  	click_on "Sign up"

  	assert_text "Welcome! You have signed up successfully."
  end

  test "should not log in" do
		visit products_path

  	click_on "Log In"

  	fill_in "Email", with: "incorrect_email@test.com"
  	fill_in "Password", with: "incorrectpassword"

  	click_on "Log in"

  	assert_text "Invalid Email or password"
  end
end
