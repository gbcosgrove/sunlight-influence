require 'net/http'
require 'json'
require 'ostruct'
require_relative 'influence/call_constructor_module.rb'
require_relative 'influence/api_resources.rb'

module Sunlight
  module Influence



    def self.api_key
      @api_key = 'b34a371adbb94d988029fec07141ed1d'
    end

    # def self.api_key=(api_key)
    #   @api_key = api_key
    # end
  end
end
