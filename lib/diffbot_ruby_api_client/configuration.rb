module DiffbotRubyApiClient
  module Configuration
    VALID_CONNECTION_KEYS = [:endpoint, :method].freeze
    VALID_OPTIONS_KEYS = [:api_key].freeze
    VALID_CONFIG_KEYS = VALID_CONNECTION_KEYS + VALID_OPTIONS_KEYS

    DEFAULT_ENDPOINT = 'http://api.diffbot.com/v2'
    DEFAULT_METHOD = :get

    DEFAULT_API_KEY = nil
    DEFAULT_FORMAT = :json

    # Build accessor methods for every config options so we can do this, for example:
    # Awesome.format = :xml
    attr_accessor *VALID_CONFIG_KEYS

    # Make sure we have the default values set when we get 'extended'
    def self.extended(base)
      base.reset
    end

    def reset
      self.endpoint = DEFAULT_ENDPOINT
      self.method = DEFAULT_METHOD

      self.api_key = DEFAULT_API_KEY

    end

    def configure
      yield self
    end

    # Return the configuration values set in this module
    def options
      Hash[ * VALID_CONFIG_KEYS.map { |key| [key, send(key)] }.flatten ]
    end

  end # Configuration
end