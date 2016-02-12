module CsobPaymentGateway
  class BasePayment

    def initialize(attributes = {})
      attributes.each do |key, value|
        instance_variable_set(:"@#{key}", value) if self.respond_to?(key)
      end

      @merchant_id ||= CsobPaymentGateway.configuration.merchant_id.to_s
      @public_key ||= CsobPaymentGateway.configuration.public_key.to_s
      @private_key ||= CsobPaymentGateway.configuration.private_key.to_s
      @gateway_url ||= CsobPaymentGateway.configuration.gateway_url.to_s
      @timestamp = Time.zone.now.strftime("%Y%m%d%H%M%S")
    end

    attr_reader :merchant_id, :public_key, :gateway_url, :cart_items, :currency, :order_id, :total_price, :customer_id

    def init_payment
      puts "#{self.inspect}"
    end


  end
end
