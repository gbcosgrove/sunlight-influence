require_relative 'call_constructor_module.rb'

class Sunlight::Influence::Industry < OpenStruct
  extend CallConstructor

  def self.top_industries
    category = "/aggregates/industries/top_"
    foo = search_format(name)
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.top_organizations
    category = "/aggregate/industries/#{entity_id}/orgs"
    foo = search_format(name)
    bar = uri_builder(foo)
    sunlight_call(bar)
  end
end
