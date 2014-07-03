class Sunlight::Influence::EntitySearch < OpenStruct
  extend CallConstructor

  def self.search(name)
    category = "entities"
    foo = search_format(name)
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.find_politician(name)
    category = "entities"
    type = "politician"
    foo = search_format(name)
    bar = uri_builder(foo, type)
    sunlight_call(bar)
  end

  def self.find_individual(name)
    category = "entities"
    type = "individual"
    foo = search_format(name)
    bar = uri_builder(foo, type)
    sunlight_call(bar)
  end

  def self.find_organization(name)
    category = "entities"
    type = "organization"
    foo = search_format(name)
    bar = uri_builder(foo, type)
    sunlight_call(bar)
  end

  def self.find_industry(name)
    category = "entities"
    type = "industry"
    foo = search_format(name)
    bar = uri_builder(foo, type)
    sunlight_call(bar)
  end

  def self.retrieve_overview(entity_id, cycle)
    uri = URI("#{Sunlight::Influence::BASE_URI}/entities/#{entity_id}.json?cycle=#{cycle}&apikey=#{Sunlight::Influence.api_key}")
    JSON.load(Net:HTTP.get(uri))["results"].collect{|json| new(json)}
  end

end
