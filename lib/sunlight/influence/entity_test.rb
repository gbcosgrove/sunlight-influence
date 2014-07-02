# require 'sunlight/influence'
require 'ostruct'

class Sunlight::Influence::EntityTest < OpenStruct
  attr_accessor :result


  def self.find_politician(name)
    uri = URI("#{Sunlight::Influence::BASE_URI}/entities.json?search=#{name}&type=politician&apikey=#{Sunlight::Influence.api_key}")

    JSON.load(Net::HTTP.get(uri))["results"].collect{|json| new(json)}
  end

  def self.find_individual(name)
    uri = URI("#{Sunlight::Influence::BASE_URI}/entities.json?search=#{name}&type=individual&apikey=#{Sunlight::Influence.api_key}")

    JSON.load(Net::HTTP.get(uri))["results"].collect{|json| new(json)}
  end

  def self.find_organization(name)
    uri = URI("#{Sunlight::Influence::BASE_URI}/entities.json?search=#{name}&type=organization&apikey=#{Sunlight::Influence.api_key}")

    JSON.load(Net::HTTP.get(uri))["results"].collect{|json| new(json)}
  end

  def self.find_industry(name)
    uri = URI("#{Sunlight::Influence::BASE_URI}/entities.json?search=#{name}&type=industry&apikey=#{Sunlight::Influence.api_key}")

    JSON.load(Net::HTTP.get(uri))["results"].collect{|json| new(json)}
  end

end

