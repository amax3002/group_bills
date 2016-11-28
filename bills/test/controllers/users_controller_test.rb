require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_user_path
    assert_response :success
  end

  test "new User" do
    User.create!(first_name: "Alex", last_name: "Guy", email: "amax3002@gmail.com", password: "password")
    post users_path, params: {user: {first_name: "Alex", last_name: "Guy", email: "amax3002@gmail.com", password: "password"}}
    assert_equal User.last.first_name, "Alex"
  end

  test "method get full name with path" do
    User.create!(first_name: "Alex", last_name: "Guy", email: "amax3002@gmail.com", password: "password")
    post users_path, params: {user: {first_name: "Alex", last_name: "Guy", email: "amax3002@gmail.com", password: "password"}}
    assert_equal User.last.full_name, "Alex Guy"
  end

end
