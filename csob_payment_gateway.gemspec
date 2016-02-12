require "csob_payment_gateway/version"

Gem::Specification.new do |s|
  s.name        = 'csob_payment_gateway'
  s.version     = CsobPaymentGateway::VERSION
  s.date        = '2016-02-12'
  s.summary     = "Ruby implementation of CSOB PaymentGateway"
  s.description = "Gem for integration CSOB PaymentGateway in Ruby"
  s.authors     = ["Jiří Kratochvíl"]
  s.email       = 'me@kratochviljiri.cz'
  s.files       =     `git ls-files`.split("\n")
  s.homepage    = 'http://rubygems.org/gems/csob_payment_gateway'
  s.license       = 'MIT'
  s.require_paths = ["lib"]
end