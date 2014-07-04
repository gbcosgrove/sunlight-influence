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
    entity_id = self.ind_id_lookup(search: options[:name])
    options[:parameters] = string_constructor(cycle: options[:cycle], limit: options[:limit])
    options[:category] = "aggregates/indiv/#{entity_id}/recipient_orgs"
    args = {category: options[:category], parameters: options[:parameters]}
    call = uri_builder(args)
    sunlight_call(call)
  end

  def self.top_recipient_politicians(options)
    entity_id = self.ind_id_lookup(search: options[:name])
    options[:parameters] = string_constructor(cycle: options[:cycle], limit: options[:limit])
    options[:category] = "aggregates/indiv/#{entity_id}/recipient_pols"
    args = {category: options[:category], parameters: options[:parameters]}
    call = uri_builder(args)
    sunlight_call(call)
  end

  def self.party_breakdown(options)
    entity_id = self.ind_id_lookup(search: options[:name])
    options[:parameters] = string_constructor(cycle: options[:cycle])
    options[:category] = "aggregates/indiv/#{entity_id}/recipients/party_breakdown"
    args = {category: options[:category], parameters: options[:parameters]}
    call = uri_builder(args)
    sunlight_call(call)
  end

  def self.lobbying_registrants(options)
    entity_id = self.ind_id_lookup(search: options[:name])
    options[:parameters] = string_constructor(cycle: options[:cycle], limit: options[:limit])
    options[:category] = "aggregates/indiv/#{entity_id}/registrants"
    args = {category: options[:category], parameters: options[:parameters]}
    call = uri_builder(args)
    sunlight_call(call)
  end

  def self.lobbying_clients(options)
    entity_id = self.ind_id_lookup(search: options[:name])
    options[:parameters] = string_constructor(cycle: options[:cycle], limit: options[:limit])
    options[:category] = "aggregates/indiv/#{entity_id}/party_breakdown"
    args = {category: options[:category], parameters: options[:parameters]}
    call = uri_builder(args)
    sunlight_call(call)
  end

  def self.lobbying_issues(options)
    entity_id = self.ind_id_lookup(name: options[:name])
    options[:parameters] = string_constructor(cycle: options[:cycle], limit: options[:limit])
    options[:category] = "aggregates/indiv/#{entity_id}/issues"
    args = {category: options[:category], parameters: options[:parameters]}
    call = uri_builder(args)
    sunlight_call(call)
  end

end
