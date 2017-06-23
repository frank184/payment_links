module PaymentLinks
  module Services
    module Paypal
      mattr_accessor :production_url
      self.production_url = 'https://www.paypal.com/activity/'

      mattr_accessor :test_url
      self.test_url = 'https://www.sandbox.paypal.com/activity/'

      def self.service_url
        mode = PaymentLinks.mode
        case mode
        when :production
          self.production_url
        when :test
          self.test_url
        else
          raise StandardError, 'mode is invalid'
        end
      end

      mattr_accessor :payments_url
      self.payments_url = '/payment/'

      class UrlBuilder < PaymentLinks::UrlBuilder
      end

    end
  end
end
