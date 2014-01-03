require 'helper'

describe 'configuration' do

  after do
    DiffbotRubyApiClient.reset
  end

  describe '.configure' do
    DiffbotRubyApiClient::Configuration::VALID_CONFIG_KEYS.each do |key|
      it "should set the #{key}" do
        DiffbotRubyApiClient.configure do |config|
          config.send("#{key}=", key)
          DiffbotRubyApiClient.send(key).must_equal key
        end
      end
    end
  end

  DiffbotRubyApiClient::Configuration::VALID_CONFIG_KEYS.each do |key|
    describe ".#{key}" do
      it 'should return the default value' do
        DiffbotRubyApiClient.send(key).must_equal DiffbotRubyApiClient::Configuration.const_get("DEFAULT_#{key.upcase}")
      end
    end
  end

end