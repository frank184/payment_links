module PaymentLinks
  class UrlBuilder
    attr_reader :url
    def initialize(resource_type, reference_id, options = {})
      namespace = self.class.to_s.deconstantize.constantize
      service_url = namespace.send(:service_url)
      resource_url = namespace.send("#{resource_type}_url")
      @url = File::join(service_url, resource_url, reference_id)
    end
  end
end
