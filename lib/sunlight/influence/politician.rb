require_relative 'call_constructor_module.rb'

class Sunlight::Influence::Politician < OpenStruct
  extend CallConstructor

  def self.pol_id_lookup(options)
    query = Sunlight::Influence::EntitySearch
    entity = query.find_politician(options)
    entity[0]["id"]
  end

  def self.top_politicians_by_contributions_received(options)
    if options[:cycle] != nil
      options[:parameters] = string_constructor(options)
    end
    options[:category] = "aggregates/pols/top_#{options[:limit]}"
    options = {category: options[:category], parameters: options[:parameters]}
    bar = uri_builder(options)
    sunlight_call(bar)
  end

  #entity_id

  def self.top_contributors(options)
    entity_id = self.pol_id_lookup(search: options[:name])
    options.delete(:name)
    if !options.empty?
      options[:parameters] = string_constructor(options)
    end
    options[:category] = "aggregates/pol/#{entity_id}/contributors"
    args = {category: options[:category], parameters: options[:parameters]}
    call = uri_builder(args)
    sunlight_call(call)
  end

  #entity_id

  def self.top_industries(options)
    entity_id = self.pol_id_lookup(search: options[:name])
    options.delete(:name)
    if !options.empty?
      options[:parameters] = string_constructor(options)
    end
    options[:category] = "aggregates/pol/#{entity_id}/contributors/industries"
    args = {category: options[:category], parameters: options[:parameters]}
    call = uri_builder(args)
    sunlight_call(call)
  end

  #entity_id

  def self.unknown_industries(options)
    entity_id = self.pol_id_lookup(search: options[:name])
    options.delete(:name)
    if !options.empty?
      options[:parameters] = string_constructor(options)
    end
    options[:category] = "aggregates/pol/#{entity_id}/contributors/industries_unknown"
    args = {category: options[:category], parameters: options[:parameters]}
    call = uri_builder(args)
    sunlight_call(call)
  end

  #entity_id

  def self.top_sectors(options)
    entity_id = self.pol_id_lookup(search: options[:name])
    options.delete(:name)
    if !options.empty?
      options[:parameters] = string_constructor(options)
    end
    options[:category] = "aggregates/pol/#{entity_id}/contributors/sectors"
    args = {category: options[:category], parameters: options[:parameters]}
    call = uri_builder(args)
    sunlight_call(call)
  end

  #entity_id

  def self.local_breakdowns(options)
    entity_id = self.pol_id_lookup(search: options[:name])
    options.delete(:name)
    if !options.empty?
      options[:parameters] = string_constructor(options)
    end
    options[:category] = "aggregates/pol/#{entity_id}/contributors/local_breakdown"
    args = {category: options[:category], parameters: options[:parameters]}
    call = uri_builder(args)
    sunlight_call(call)
  end

  #entity_id

  def self.contributor_type_breakdown(options)
    entity_id = self.pol_id_lookup(search: options[:name])
    options.delete(:name)
    if !options.empty?
      options[:parameters] = string_constructor(options)
    end
    options[:category] = "aggregates/pol/#{entity_id}/contributors/type_breakdown"
    args = {category: options[:category], parameters: options[:parameters]}
    call = uri_builder(args)
    sunlight_call(call)
  end

  #entity_id

  def self.fec_summary(options)
    entity_id = Sunlight::Influence::EntitySearch.search(search: options[:name])
    options.delete(:name)
    options[:category] = "aggregates/pol/#{entity_id}/fec_summary"
    call = uri_builder(options)
    sunlight_call(call)
  end

  #entity_id

  def self.fec_independent_exependitures(options)
    entity_id = self.pol_id_lookup(search: options[:name])
    options.delete(:name)
    options[:category] = "aggregates/pol/#{entity_id}/fec_indexp"
    call = uri_builder(options)
    sunlight_call(call)
  end

end
