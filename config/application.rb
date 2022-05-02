require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ApiJumpstart
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # CORS
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*'
        resource '*', headers: :any, expose: ['access-token', 'expiry', 'token-type', 'uid', 'client'], methods: [:get, :post, :options, :delete, :put]
      end
    end
    
    # Initialize configuration defaults for originally generated Rails version.
      config.load_defaults 7.0
      config.generators do |g|
      g.orm :active_record, primary_key_type: :uuid, foreign_key_type: :uuid
      g.test_framework :rspec, fixture: false
      g.stylesheets false
      g.helper false
    end

    # All times in UTC, defaults to London timezone when displaying the values, and applies optimistic locking
    config.active_record.default_timezone = :utc
    config.time_zone = 'London'
    config.active_record.lock_optimistically = true

    # Middleware
    # config.middleware.insert_after "Rails::Rack::Logger", "MiddlewareHealthcheck"
    config.middleware.use Rack::Attack
    config.eager_load_paths << Rails.root.join("lib")
  end
end


