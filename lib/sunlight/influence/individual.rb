require_relative 'call_constructor_module.rb'

class Sunlight::Influence::Individual < OpenStruct
  extend CallConstructor

  def self.ind_id_lookup(args)
    query = Sunlight::Influence::EntitySearch
    entity = query.find_individual(args)
    entity[0]["id"]
  end

  def self.top_individuals_by_contributions_given(options)
    options[:parameters] = string_constructor(cycle: options[:cycle])
    options[:category] = "aggregates/indivs/top_#{options[:limit]}"
    options = {category: options[:category], parameters: options[:parameters]}
    bar = uri_builder(options)
    sunlight_call(bar)
  end

  def self.top_recipient_organizations(options)
    entity_id = self.ind_id_lookup(options[:name])
    options[:parameters] = string_constructor(cycle: options[:cycle], limit: options[:limit])
    options[:category] = "aggregate/#{entity_id}/recipient_orgs"
    args = {category: options[:category], parameters: options[:parameters]}
    call = uri_builder(args)
    sunlight_call(call)
  end

  def self.top_recipient_politicians(options)
    self.ind_id_lookup(arg[:name])
    category = "#{main}/recipient_pols"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.party_breakdown(options)
    self.ind_id_lookup(arg[:name])
    category = "#{main}/recipients/party_breakdown"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.lobbying_registrants(options)
    self.ind_id_lookup(arg[:name])
    category = "#{main}/registrants"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.lobbying_clients(options)
    self.ind_id_lookup(arg[:name])
    category = "#{main}/clients"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.lobbying_issues(options)
    self.ind_id_lookup(arg[:name])
    category = "#{main}/clients"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

end
