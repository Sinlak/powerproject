class SignUp < ActiveRecord::Base
  has_secure_password
  has_one :set_lifts
end
