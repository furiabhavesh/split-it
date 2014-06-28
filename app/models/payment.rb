class Payment < ActiveRecord::Base
  attr_accessible :balance_amount, :event_id, :given_amount, :supposed_to_give_amount, :user_id

  belongs_to :user
  belongs_to :event
  before_save :calculate_balance_amount

  def calculate_balance_amount
    self.balance_amount = self.given_amount - self.supposed_to_give_amount
  end
end
