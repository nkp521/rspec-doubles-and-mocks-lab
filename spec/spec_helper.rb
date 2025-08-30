# frozen_string_literal: true

require_relative '../lib/payment_processor'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
