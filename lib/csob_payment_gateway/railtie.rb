module CsobPaymentGateway
  class Railtie < ::Rails::Railtie
    config.after_initialize do
      CsobPaymentGateway.configure_from_rails
    end
  end
end
