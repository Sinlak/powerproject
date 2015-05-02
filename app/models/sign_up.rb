class SignUp < ActiveRecord::Base
  has_secure_password
  validates_confirmation_of :password
  validates_uniqueness_of :email
  has_one :set_lifts
end
