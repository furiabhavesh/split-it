class User < ActiveRecord::Base
  attr_accessible :name

  has_many :payments
  validates_presence_of :name
end
