require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_user_path
    assert_response :success
  end

  # test "new User" do
  #   User.create(email: "amax3002@gmail.com", password: "password")
  #   post users_path, params: {user: {email: "amax3002@gmail.com", first_name: 'Alex', last_name: 'Guy', password: "password"}}
  #   assert_response :redirect
  # end
end
