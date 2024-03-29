require 'helper'

describe DiffbotRubyApiClient::Client do

  before do
    @keys = DiffbotRubyApiClient::Configuration::VALID_CONFIG_KEYS
  end

  describe 'with module configuration' do
    before do
      DiffbotRubyApiClient.configure do |config|
        @keys.each do |key|
          config.send("#{key}=", key)
        end
      end
    end

    after do
      DiffbotRubyApiClient.reset
    end

    it "should inherit module configuration" do
      api = DiffbotRubyApiClient::Client.new
      @keys.each do |key|
        api.send(key).must_equal key
      end
    end

    describe 'with class configuration' do
      before do
        @config = {
            :api_key => 'ak',
            :endpoint => 'ep',
            :method => 'hm',
        }
      end

      it 'should override module configuration' do
        api = DiffbotRubyApiClient::Client.new(@config)
        @keys.each do |key|
          api.send(key).must_equal @config[key]
        end
      end

      it 'should override module configuration after' do
        api = DiffbotRubyApiClient::Client.new

        @config.each do |key, value|
          api.send("#{key}=", value)
        end

        @keys.each do |key|
          api.send("#{key}").must_equal @config[key]
        end
      end

    end

  end

end