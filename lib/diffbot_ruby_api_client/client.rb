module DiffbotRubyApiClient

  class Client
      include DiffbotRubyApiClient::connection
      include DiffbotRubyApiClient::Request
    # Define the same set of accessors as the DiffbotRubyApiClient module
    attr_accessor *Configuration::VALID_CONFIG_KEYS

    def initialize(options={})
      # Merge the config values from the module and those passed
      # to the client.
      merged_options = DiffbotRubyApiClient.options.merge(options)

      # Copy the merged values to this client and ignore those
      # not part of our configuration
      Configuration::VALID_CONFIG_KEYS.each do |key|
        send("#{key}=", merged_options[key])
      end
    end

    def get_data
      case method
        when :post
          post(self.endpoint,options)
        else
          get(self.endpoint,options)
      end

    end

  end # Client

end