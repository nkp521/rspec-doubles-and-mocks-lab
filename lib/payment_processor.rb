# frozen_string_literal: true

class PaymentProcessor
  attr_reader :gateway, :logger

  def initialize(gateway:, logger: nil)
    @gateway = gateway
    @logger = logger
  end

  def process(amount, account)
    raise ArgumentError, 'Amount must be positive' unless amount.positive?
    raise ArgumentError, 'Account required' if account.nil?

    result = gateway.charge(amount, account)
    logger&.info("Charged #{amount} to #{account}")
    result
  rescue StandardError => e
    logger&.error(e.message)
    raise
  end

  def refund(amount, account)
    raise ArgumentError, 'Amount must be positive' unless amount.positive?
    raise ArgumentError, 'Account required' if account.nil?

    result = gateway.refund(amount, account)
    logger&.info("Refunded #{amount} to #{account}")
    result
  rescue StandardError => e
    logger&.error(e.message)
    raise
  end
end
