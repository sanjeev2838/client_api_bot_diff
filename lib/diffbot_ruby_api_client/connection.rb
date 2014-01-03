require 'faraday'


module  DiffbotRubyApiClient
  module Connection

    private

    def connection(options)
      default_options = {
          :url => options.fetch(:endpoint, endpoint)
      }

      @connection ||= Faraday.new(default_options) do |builder|


        # TODO: Make logging optional
        # builder.response :logger

        builder.adapter adapter
      end
    end

  end # Connection

end