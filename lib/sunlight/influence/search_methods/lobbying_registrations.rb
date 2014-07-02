class Sunlight::Influence::LobbyingRegistrations
  attr_reader :registrant_name] :filing_type, :client_category, :client_name, :agencies, :transaction_type,
              :client_parent_name, :amount, :transaction_id, :lobbyists, :year, :transaction_type_desc,
              :registrant_is_firm, :issues

  def initialize(attrs)

  self.registrant_name       = attrs[:registrant_name]
  self.filing_type           = attrs[:filing_type]
  self.client_category       = attrs[:client_category]
  self.client_name           = attrs[:client_name]
  self.agencies              = attrs[:agencies]
  self.transaction_type      = attrs[:transaction_type]
  self.transaction_type      = attrs[:transaction_type]
  self.client_parent_name    = attrs[:client_parent_name]
  self.amount                = attrs[:amount]
  self.transaction_id        = attrs[:transaction_id]
  self.lobbyists             = attrs[:lobbyists]
  self.year                  = attrs[:year]
  self.transaction_type_desc = attrs[:transaction_type_desc]
  self.registrant_is_firm    = attrs[:registrant_is_firm]
  self.issues                = attrs[:issues]

  end

end
