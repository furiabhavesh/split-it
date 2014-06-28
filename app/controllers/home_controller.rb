class HomeController < ApplicationController
  def index
  end

  def calculate
    @val = {}
    Event.all.each{|e|
      e.payments.each{|payment|
        if(@val.has_key?(payment.user.id))
          @val[payment.user.id] += payment.balance_amount
        else
          @val[payment.user.id] = payment.balance_amount
        end
      }
    }
    @val
  end
end
