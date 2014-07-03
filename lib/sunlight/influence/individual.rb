class Sunlight::Influence::Individual < OpenStruct
  extend CallConstructor

  def self.top_individuals_by_contributions_given
    category = "/aggregates/indivs/top_"
  end

  def self.top_recipient_organizations
    category = "/aggregates/indiv/#{entity_id}/recipient_orgs"
  end

  def self.top_recipient_politicians
    category = "/aggregates/indiv/#{entity_id}/recipient_pols"
  end

  def self.party_breakdown
    category = "/aggregates/indiv/#{entity_id}/recipients/party_breakdown"
  end

  def self.lobbying_registrants
    category = "/aggregates/indiv/#{entity_id}/registrants"
  end

  def self.lobbying_clients
    category = "/aggregates/indivs/#{entity_id}/clients"
  end

  def self.lobbying_issues
    category = "/aggregates/indivs/#{entity_id}/clients"
  end

end
