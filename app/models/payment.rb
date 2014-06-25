class Payment < ActiveRecord::Base
  attr_accessible :balance_amount, :event_id, :given_amount, :supposed_to_give_amount, :user_id

  belongs_to :user
  belongs_to :event
end
