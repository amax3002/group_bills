class User < ApplicationRecord
  has_many :bills
  def password
    @_password ||= BCrypt::Password.new(password_hash)
  end

  def password=(unhashed_password)
    @_password = BCrypt::Password.create(unhashed_password)
    self.password_hash = @_password
  end

  def full_name
    # self.first_name + " " + self.last_name
    [first_name, last_name].join(" ")
  end
end
