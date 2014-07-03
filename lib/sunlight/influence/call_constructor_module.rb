module CallConstructor

  search = "search="
  cycle = "cycle="
  type = "type="

  def sunlight_call(api_call)
     result = JSON.load(Net::HTTP.get(api_call))
     result.first
  end

  def search_format(foo)
    if foo.match(" ")
      foo.gsub!(' ', '%20')
    else
      foo
    end
  end

  def uri_builder(args)
    # URI("#{Sunlight::Influence::BASE_URI}/entities.json?search=#{search}&type=#{type}&apikey=#{Sunlight::Influence.api_key}")
    base = args[:base]
    category = args[:category]
    parameters = args[:parameters]
    type = args[:type]
    api_key = args[:api_key]
    URI("#{base}/#{category}.#{format}?search=#{parameters}#{type}#{api_key}")
  end
end
