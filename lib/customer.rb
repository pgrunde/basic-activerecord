require "active_record"

class Customer < ActiveRecord::Base
  has_many :orders
  has_many :items, through: :orderitems
end
