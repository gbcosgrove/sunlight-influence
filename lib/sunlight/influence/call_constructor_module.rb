module CallConstructor

  def search_format(foo)
    if foo.match(" ")
      foo.gsub!(' ', '%20')
    else
      foo
    end
  end

  def string_constructor(args)
   "#{type}#{entity_id}#{category}#{format}?#{search}"
  end

  def uri_builder(args)
    # URI("#{Sunlight::Influence::BASE_URI}/entities.json?search=#{search}&type=#{type}&apikey=#{Sunlight::Influence.api_key}")

    URI("#{base}/#{category}#{entity_id}.json?#{search}#{api_key}")
    # URI("#{base}/#{category}#{entity_id}.json?#{search}#{api_key}")
  end

   def sunlight_call(api_call)
     result = JSON.load(Net::HTTP.get(api_call))
     result.first
  end
end
