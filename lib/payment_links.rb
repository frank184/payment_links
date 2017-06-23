require "payment_links/engine"
require "payment_links/action_view_helper"
require "payment_links/services"
require "payment_links/url_builder"

module PaymentLinks
  mattr_accessor :mode
  self.mode = :production

  # A check to see if we're in test mode
  def self.test?
    self.mode == :test
  end

  def self.service(name)
    Services.const_get("#{name.to_s.downcase}".camelize)
  end
end
