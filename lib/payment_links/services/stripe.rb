module PaymentLinks
  module Services
    module Stripe
      mattr_accessor :production_url
      self.production_url = "https://dashboard.stripe.com/"

      mattr_accessor :test_url
      self.test_url = "https://dashboard.stripe.com/test/"

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
      self.payments_url = '/payments/'

      class UrlBuilder < PaymentLinks::UrlBuilder
      end

    end
  end
end
