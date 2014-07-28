require "./lib/connection"
require "./lib/customer"
require "./lib/item"
require "./lib/orderitem"
require "./lib/order"
require "awesome_print"

# p Item.where("name LIKE 'boot%'")

# p Order.all

# p Order.limit(5)

# p Order.last(5)

# p Customer.select(:id, :name, :email)

# p Customer.select(:id, :name, :address)

# p Customer.count

# p Order.sum("amount")

# p Order.where(customer_id:1).sum(:amount)

# p Order.average(:amount)

# p Order.average(:amount).round(2)

# p Order.minimum(:amount)

# p Order.maximum(:amount)

# p Order.select(:customer_id,:amount).group(:customer_id).order(:customer_id).minimum(:amount)

# p Order.select(:customer_id,:amount).group(:customer_id).order(:customer_id).maximum(:amount)

# p Customer.all.where(:state => "Colorado")

# p Customer.all.where(:state => "Colorado",:city => "Rigobertoside")

# p Customer.where(state:["Virgina","Ohio"])
#
# item = Item.find(3)
# item.name = "board01"
# item.save
# p Item.where(name:"board01")

# p Item.create(name: "Kayab", description:"one person kayak")

# item = Item.find(10)
# item.destroy

# ap Order.select(:customer_id,:amount).group(:customer_id).order(:customer_id).sum(:amount)

# p Order.joins(:customer)

# ap Customer.joins(:orders).select("orders.id", "name", "amount")

butts = Customer.joins(:orders).select("customers.id","name","amount")
ap butts.group("customers.name").order("customers.name").sum(:amount)


