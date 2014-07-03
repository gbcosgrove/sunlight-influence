require_relative 'call_constructor_module.rb'
require_relative ''


module CallConstructor


  def search_format(foo)
    if foo.match(" ")
      foo.gsub!(' ', '%20')
    else
      foo
    end
  end

  def string_constructor(args)
    puts "#{args[:type]}#{args[:entity_id]}#{arg[:category]}#{args[:format]}?#{args[:search]}"
  end

  def uri_builder(args)
    api_key = Sunlight::Influence.api_key
    URI("#{Sunlight::Influence::BASE_URI}/#{args[:category]}#{args[:entity_id]}.json?#{args[:search]}&apikey=#{api_key}")
  end

   def sunlight_call(api_call)
    result = JSON.load(Net::HTTP.get(api_call))
  end
end
