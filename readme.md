require 'csob_payment_gateway'
CsobPaymentGateway.configure_from_yaml("config/csob.yml")
data = CsobPaymentGateway::BasePayment.new(total_price: 6000,cart_items: [{ name: "Tier 1",quantity: 1, amount: 5000, description: "Tier 1" }, { name: "Delivery",quantity: 1, amount: 1000, description: "Delviery" }],order_id: 1234, description: "Order from kingdomcomerpg.com - Tier 1 for 5000$", customer_id: 1234 ).payment_data


gem build csob_payment_gateway.gemspec & gem install ./csob_payment_gateway-0.0.1.gem
