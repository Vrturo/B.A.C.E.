class User < ActiveRecord::Base
  include BCrypt
  validates :name, :email, :password_hash, presence: true
  validates :name, :email, uniqueness: true
  validates :password_hash, length: { minimum: 6}

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
