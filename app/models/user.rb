class User < ActiveRecord::Base
  validates :first_name, :last_name, :email, :password_hash, presence: true
  validates :email, uniqueness: true
  validates :password_hash, length: { minimum: 6}
  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
