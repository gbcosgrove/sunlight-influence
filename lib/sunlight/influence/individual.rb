require_relative 'call_constructor_module.rb'

class Sunlight::Influence::Individual < OpenStruct
  extend CallConstructor

  main = "aggregates/indiv/"

  def self.ind_id_lookup(name)
    entity = Sunlight::Influence::EntitySearch.find_individual(name)
    entity_id = entity[:entity_id]
  end

  def self.top_individuals_by_contributions_given
    category = "/aggregates/indivs/top_"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.top_recipient_organizations(args)
    self.ind_id_lookup(arg[:name])
    category = "#{main}/recipient_orgs"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.top_recipient_politicians(args)
    self.ind_id_lookup(arg[:name])
    category = "#{main}/recipient_pols"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.party_breakdown(args)
    self.ind_id_lookup(arg[:name])
    category = "#{main}/recipients/party_breakdown"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.lobbying_registrants(args)
    self.ind_id_lookup(arg[:name])
    category = "#{main}/registrants"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.lobbying_clients(args)
    self.ind_id_lookup(arg[:name])
    category = "#{main}/clients"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.lobbying_issues(args)
    self.ind_id_lookup(arg[:name])
    category = "#{main}/clients"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

end
