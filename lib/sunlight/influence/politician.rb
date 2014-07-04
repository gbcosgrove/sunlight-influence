require_relative 'call_constructor_module.rb'

class Sunlight::Influence::Politician < OpenStruct
  extend CallConstructor

  main = "aggregates/pol//contributors"

  def self.pol_id_lookup(name)
    entity = Sunlight::Influence::EntitySearch.find_politician(name)
    entity_id = entity[:entity_id]
    puts entity_id
  end

  def self.top_politicians_by_contributions_received
    category = "/aggregates/pols/top_"
    foo = search_format(name)
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.top_contributors(args)
    self.pol_id_lookup(args[:name])
    category = "/#{main}"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.top_industries(args)
    self.pol_id_lookup(args[:name])
    category = "/#{main}/industries"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.unknown_industries(args)
    self.pol_id_lookup(args[:name])
    category = "/#{main}/industries_unknown"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.top_sectors(args)
    self.pol_id_lookup(args[:name])
    category = "/#{main}/sectors"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.local_breakdowns(args)
    self.pol_id_lookup(args[:name])
    category = "/#{main}/local_breakdown"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.contributor_type_breakdown(args)
    self.pol_id_lookup(args[:name])
    category = "/#{main}/type_breakdown"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.fec_summary(args)
    self.pol_id_lookup(args[:name])
    category = "/aggregates/pol/#{entity_id}/fec_summary"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.fec_independent_exependitures(args)
    self.pol_id_lookup(args[:name])
    category = "/aggregates/pol/#{entity_id}/fec_indexp"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

end
