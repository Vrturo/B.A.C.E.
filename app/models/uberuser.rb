class UberUser < ActiveRecord::Base

  validates :first_name, :last_name, :email, prescence: true
end
