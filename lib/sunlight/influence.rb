require 'net/http'
require 'json'
require 'ostruct'
require_relative 'influence/call_constructor_module.rb'

module Sunlight
  module Influence

    BASE_URI = "http://transparencydata.com/api/1.0"



    def self.api_key
      @api_key = api_key
    end

    def self.api_key=(api_key)
      @api_key = api_key
    end
  end
end
