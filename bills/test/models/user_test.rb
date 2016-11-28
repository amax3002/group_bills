require 'test_helper'

class UserTest < ActiveSupport::TestCase
    test "method for full name" do
      a = User.create!(first_name: "Alex", last_name: "Guy", email: "amax3002@gmail.com", password: "password")
      # post users_path, params: {user: {first_name: "Alex", last_name: "Guy", email: "amax3002@gmail.com", password: "password"}}
      assert_equal a.full_name, "Alex Guy"
    end
end
