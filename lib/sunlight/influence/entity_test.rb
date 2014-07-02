require_relative 'call_constructor_module.rb'

class Sunlight::Influence::EntityTest < OpenStruct
  attr_accessor :result
  extend CallConstructor

  def self.find_politician(name)
    type = "politician"
    foo = search_format(name)
    bar = uri_builder(foo, type)
    sunlight_call(bar)
  end

  def self.find_individual(name)
    type = "individual"
    foo = search_format(name)
    bar = uri_builder(foo, type)
    sunlight_call(bar)
  end

  def self.find_organization(name)
    type = "organization"
    foo = search_format(name)
    bar = uri_builder(foo, type)
    sunlight_call(bar)
  end

  def self.find_industry(name)
    type = "industry"
    foo = search_format(name)
    bar = uri_builder(foo, type)
    sunlight_call(bar)
  end

end


