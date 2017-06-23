require 'action_pack'

module PaymentLinks
  module ActionViewHelper

    def service_url(resource_type, reference_id, options = {})
      service_class = PaymentLinks.service(options.delete(:service).to_s).resource(resource_type).const_get('Helper')
      service = service_class.new(resource_type, reference_id, options)
    end

    def payment_url(reference_id, options = {})
      service_url(:payments, reference_id, options)
    end

    def customer_url(reference_id, options = {})
      service_url(:customers, reference_id, options)
    end

    def card_url(reference_id, options = {})
      service_url(:cards, reference_id, options)
    end

  end
end
