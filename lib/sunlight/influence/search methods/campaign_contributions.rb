require 'sunlight/influence'

class Sunlight::Influence::CampaignContributions
  attr_reader :seat, :committee_ext_id, :seat_held, :recipient_party, :transaction_type_description, :recipient_type,
              :seat_status, :recipient_state, :contributor_category, :contributor_gender, :contributor_state,
              :recipient_category, :is_amendmant, :district, :organization_name, :recipient_ext_id, :parent_organization_name,
              :contributor_address, :transaction_id, :contributor_occupation, :filing_id, :contributor_city,
              :recipient_state_held, :district_held, :recipient_name, :organization_ext_id, :contributor_zipcode,
              :transaction_namespace, :date, :committee_name, :candidacy_status, :parent_organization_ext_id,
              :cycle, :contributor_name, :contributor_type, :contributor_employer, :seat_result, :transaction_type,
              :amount, :contributor_ext_id, :committee_party

  def intialize(attrs)
    self.seat                             = attrs[:seat]
    self.committee_ext_id                 = attrs[:committee_ext_id]
    self.seat_held                        = attrs[:seat_held]
    self.recipient_party                  = attrs[:recipient_party]
    self.transaction_type_description     = attrs[:transaction_type_description]
    self.recipient_type                   = attrs[:recipient_type]
    self.seat_status                      = attrs[:seat_status]
    self.recipient_state                  = attrs[:recipient_state]
    self.contributor_category             = attrs[:contributor_category]
    self.contributor_gender               = attrs[:contributor_gender]
    self.contributor_state                = attrs[:contributor_state]
    self.recipient_category               = attrs[:recipient_category]
    self.is_amendmant                     = attrs[:is_amendmant]
    self.district                         = attrs[:district]
    self.organization_name                = attrs[:organization_name]
    self.recipient_ext_id                 = attrs[:recipient_ext_id]
    self.parent_organization_name         = attrs[:parent_organization_name]
    self.contributor_address              = attrs[:contributor_address]
    self.transaction_id                   = attrs[:transaction_id]
    self.contributor_occupation           = attrs[:contributor_occupation]
    self.filing_id                        = attrs[:filing_id]
    self.contributor_city                 = attrs[:contributor_city]
    self.recipient_state_held             = attrs[:recipient_state_held]
    self.district_held                    = attrs[:district_held]
    self.recipient_name                   = attrs[:recipient_name]
    self.organization_ext_id              = attrs[:organization_ext_id]
    self.contributor_zipcode              = attrs[:contributor_zipcode]
    self.transaction_namespace            = attrs[:transaction_namespace]
    self.date                             = attrs[:date]
    self.committee_name                   = attrs[:committee_name]
    self.candidacy_status                 = attrs[:candidacy_status]
    self.parent_organization_ext_id       = attrs[:parent_organization_ext_id]
    self.cycle                            = attrs[:cycle]
    self.contributor_name                 = attrs[:contributor_name]
    self.contributor_type                 = attrs[:contributor_type]
    self.contributor_employer             = attrs[:contributor_employer]
    self.seat_result                      = attrs[:seat_result]
    self.transaction_type                 = attrs[:transaction_type]
    self.amount                           = attrs[:amount]
    self.contributor_ext_id               = attrs[:contributor_ext_id]
    self.committee_party                  = attrs[:committee_party]
  end

  ## Finish this method
  def self.retrieve_campaign_contributions(state)
    state_t = self.state_transform(state)

  end

  def self.state_transform(state)
    if state.size == 2
      state_search, state_param = "state", state.upcase
    else
      state_search, state_param = "state_name", state.capitalize
    end
  end

  ## Must take state method into account

  # def self.by_state(state)
  #   if state.size == 2
  #     state_search, state_param = "state", state.upcase
  #   else
  #     state_search, state_param = "state_name", state.capitalize
  #   end

  #   uri = URI("#{Sunlight::Congress::BASE_URI}/legislators?#{state_search}=#{state_param}&apikey=#{Sunlight::Congress.api_key}")
  #   JSON.load(Net::HTTP.get(uri))["results"].collect{|json| new(json) }
  # end

end
