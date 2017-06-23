module PaymentLinks
  module Services
    Dir[File.dirname(__FILE__) + '/services/*.rb'].each do |f|
      # Get camelized class name
      filename = File.basename(f, '.rb')
      # Camelize the string to get the class name
      integration_class = filename.camelize.to_sym
      # Register for autoloading
      autoload integration_class, f
    end
  end
end
