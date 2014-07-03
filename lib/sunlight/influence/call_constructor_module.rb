require_relative 'call_constructor_module.rb'


module CallConstructor

  def search_format(foo)
    if foo.match(" ")
      foo.gsub!(' ', '%20')
    else
      foo
    end
  end

  def string_constructor(args)
    collection = []
    args.each do |k, v|
      val = search_format(v)
      collection << "#{k}=#{val}&"
    end
    collection.join
  end

  def uri_builder(args)
    api_key = Sunlight::Influence.api_key
    URI("#{Sunlight::Influence::BASE_URI}/#{args[:category]}#{args[:entity_id]}.json?#{args[:parameters]}apikey=#{api_key}")
  end

   def sunlight_call(api_call)
    result = JSON.load(Net::HTTP.get(api_call))
  end
end
