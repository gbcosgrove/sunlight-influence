module CallConstructor

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

  def uri_builder(search)
    URI("#{Sunlight::Influence::BASE_URI}/entities.json?search=#{search}&type=#{type}&apikey=#{Sunlight::Influence.api_key}")
  end
end
