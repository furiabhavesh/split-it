class Event < ActiveRecord::Base
  attr_accessible :description, :name, :total_cost, :payments_attributes
  has_many :payments, :dependent => :destroy
  validates_presence_of :name, :total_cost
  accepts_nested_attributes_for :payments, :allow_destroy => true
end
