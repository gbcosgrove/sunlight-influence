require_relative 'call_constructor_module.rb'

class Sunlight::Influence::ItemizedSearch < OpenStruct
  extend CallConstructor



  def self.campaign_contributions
    category = "contributions"
    foo = search_format(name)
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.bundled_campaign_contributions
    category
    foo = search_format(name)
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.contractor_misconduct
    category
    foo = search_format(name)
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.earmarks
    category
    foo = search_format(name)
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.epa_echo
    category
    foo = search_format(name)
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.faca_memberships
    category
    foo = search_format(name)
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.federal_contracts
    category
    foo = search_format(name)
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.federal_grants
    category
    foo = search_format(name)
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.lobbying_registrations
    category
    foo = search_format(name)
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

end
