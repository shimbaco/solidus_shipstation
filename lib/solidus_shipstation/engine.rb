module SolidusShipstation
  class Engine < Rails::Engine
    require 'spree/core'
    isolate_namespace Spree
    engine_name 'solidus_shipstation'

    config.autoload_paths += %W(#{config.root}/lib)

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    initializer "solidus.shipstation.preferences", :before => :load_config_initializers do |app|
      Spree::AppConfiguration.class_eval do
        preference :send_shipped_email,       :boolean, default: false
        preference :shipstation_username,     :string
        preference :shipstation_password,     :string
        preference :shipstation_weight_units, :string
        preference :shipstation_number,       :symbol, default: :shipment
      end
    end

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), '../../app/**/*_decorator*.rb')) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc
  end
end
