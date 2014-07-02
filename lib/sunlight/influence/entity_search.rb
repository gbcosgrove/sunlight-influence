# require_relative 'sunlight/influence.rb'

class Sunlight::Influence::Entity < OpenStruct
  attr_reader :name, :count_given, :firm_income, :count_lobbied, :seat, :total_received, :state,
                :lobbying_firm, :count_received, :party, :total_given, :type, :id, :non_firm_spending,
                :is_superpac

  def initialize(attrs)
    self.name                               = attrs[:name]
    self.count_given                        = attrs[:count_given]
    self.firm_income                        = attrs[:firm_income]
    self.count_lobbied                      = attrs[:count_lobbied]
    self.seat                               = attrs[:seat]
    self.total_received                     = attrs[:total_received]
    self.state                              = attrs[:state]
    self.lobbying_firm                      = attrs[:lobbying_firm]
    self.count_received                     = attrs[:count_received]
    self.party                              = attrs[:party]
    selt.total_given                        = attrs[:total_given]
    self.type                               = attrs[:type]
    self.id                                 = attrs[:id]
    self.non_firm_spending                  = attrs[:non_firm_spending]
    self.is_superpac                        = attrs[:is_superpac]
  end

  def self.find_politician(first_name, last_name)
    uri = URI("#{Sunlight::Influence::BASE_URI}/entities.json?search=#{first_name}%20#{last_name}&type=politician&apikey=#{Sunlight::Influence.api_key}")

    JSON.load(Net::HTTP.get(uri))["results"].collect{|json| new(json)}
  end

  def self.find_individual
    uri = URI("#{Sunlight::Influence::BASE_URI}/entities.json?search=#{name}&type=individual&apikey=#{Sunlight::Influence.api_key}")

    JSON.load(Net::HTTP.get(uri))["results"].collect{|json| new(json)}
  end

  def self.find_organization
    uri = URI("#{Sunlight::Influence::BASE_URI}/entities.json?search=#{name}&type=organization&apikey=#{Sunlight::Influence.api_key}")

    JSON.load(Net::HTTP.get(uri))["results"].collect{|json| new(json)}
  end

  def self.find_industry
    uri = URI("#{Sunlight::Influence::BASE_URI}/entities.json?search=#{name}&type=industry&apikey=#{Sunlight::Influence.api_key}")

    JSON.load(Net::HTTP.get(uri))["results"].collect{|json| new(json)}
  end


end
