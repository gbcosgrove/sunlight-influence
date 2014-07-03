class Sunlight::Influence::EntitySearch < OpenStruct
  extend CallConstructor

  def self.id_lookup(name)
    entity = self.search(name).first
    entity["id"]
  end

  def self.search(name)
    name = search_format(name)
    foo = { category: "entities", search: "search=#{name}" }
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.find_politician(name)
    name = search_format(name)
    foo = { category: "entities", type: "type=politican", search: "search=#{name}" }
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.find_individual(name)
    name = search_format(name)
    foo = { category: "entities", type: "type=individual", search: "search=#{name}" }
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.find_organization(name)
    name = search_format(name)
    foo = { category: "entities", type: "type=organization", search: "search=#{name}" }
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.find_industry(name)
    name = search_format(name)
    foo = { category: "entities", type: "type=industry", search: "search=#{name}" }
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.retrieve_overview(args)
    entity_id = self.id_lookup(args[:name])
    foo = { category: "entities/", entity_id: "#{entity_id}" }
    bar = uri_builder(foo)
    sunlight_call(bar)
  end


end
