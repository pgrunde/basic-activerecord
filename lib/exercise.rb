require "./lib/connection"
require "./lib/customer"
require "./lib/item"
require "./lib/orderitem"
require "./lib/order"


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

