# Csob payment gateway compatible with Padrino

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'csob_payment_gateway'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install csob_payment_gateway

## Usage

### Initialize

config/initializers/csob.rb

```ruby
CsobPaymentGateway.configure do |config|
  config.close_payment      = true
  config.currency           = 'CZK'
  config.environment        = Rails.env.production? ? :production : :test
  config.gateway_url        = "https://iapi.iplatebnibrana.csob.cz/api/v1.5"
  config.keys_directory     = "private/keys"
  config.merchant_id        = "M1MIPS0459"
  config.private_key        = "rsa_M1MIPS0459.key"
  config.public_key         = "mips_iplatebnibrana.csob.cz.pub"
  config.return_method_post = true
  config.return_url         = "http://localhost:3000/orders/process_order"
end
```

or

config/csob.yml

```yml
close_payment: "true"
currency: "USD"
environment: :test
gateway_url: "https://iapi.iplatebnibrana.csob.cz/api/v1.5"
keys_directory: "private/keys"
merchant_id: "M1MIPS0459"
private_key: "rsa_M1MIPS0459.key"
public_key: "mips_iplatebnibrana.csob.cz.pub"
return_method_post: true
return_url: "http://localhost:3000/orders/process_order"
```

### Payment

```ruby
payment = CsobPaymentGateway::BasePayment.new(
  total_price: 6000,
  cart_items:  [
    { name: 'Tier 1',   quantity: 1, amount: 5000, description: 'Tier 1' },
    { name: 'Delivery', quantity: 1, amount: 1000, description: 'Delviery' }
  ],
  order_id:    1234,
  description: 'Order from kingdomcomerpg.com - Tier 1 for 5000$',
  customer_id: 1234
)

init   = payment.payment_init
pay_id = init['payId']

redirect_to payment.payment_process_url
```
