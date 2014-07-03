class Sunlight::Influence::ItemizedSearch < OpenStruct
  extend CallConstructor



  def self.campaign_contributions
    category = "contributions"
  end

  def self.bundled_campaign_contributions
    category
  end

  def self.contractor_misconduct
    category
  end

  def self.earmarks
    category
  end

  def self.epa_echo
    category
  end

  def self.faca_memberships
    category
  end

  def self.federal_contracts
    category
  end

  def self.federal_grants
    category
  end

  def self.lobbying_registrations
    category
  end

end
