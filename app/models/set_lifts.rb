class SetLifts < ActiveRecord::Base
  belongs_to :sign_up
  TEMPERATURES = ['hot', 'medium', 'cold']
end
