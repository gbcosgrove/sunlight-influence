class Sunlight::Influence::Organization < OpenStruct
  extend CallConstructor

  main = "aggregates/org/#{entity_id}"

  def self.org_id_lookup(name)
    entity = EntitySearch.find_organization(name)
    entity_id = entity[:entity_id]
  end

  def self.top_organizations_by_contributions_given(args)
    category = "#{main}/top_"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.top_recipients(args)
    self.org_id_lookup(args[:name])
    category = "#{main}/recipients"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.pac_recipients(args)
    self.org_id_lookup(args[:name])
    category = "#{main}/recipients_pacs"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.party_breakdown(args)
    self.org_id_lookup(args[:name])
    category = "#{main}/recipients/party_breakdown"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.state_federal_breakdown(args)
    self.org_id_lookup(args[:name])
    category = "#{main}/recipients/level_breakdown"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.lobbying_registrants(args)
    self.org_id_lookup(args[:name])
    category = "#{main}/registrants"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.lobbying_issues(args)
    self.org_id_lookup(args[:name])
    category = "#{main}/issues"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.bills(args)
    self.org_id_lookup(args[:name])
    category = "#{main}/bills"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.lobbyists(args)
    self.org_id_lookup(args[:name])
    category = "#{main}/lobbyists"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.registrant_clients(args)
    self.org_id_lookup(args[:name])
    category = "#{main}/registrant/clients"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.registrant_issues(args)
    self.org_id_lookup(args[:name])
    category = "#{main}/registrant/issues"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.registrant_bills(args)
    self.org_id_lookup(args[:name])
    category = "#{main}/registrant/bills"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.registrant_lobbyists(args)
    self.org_id_lookup(args[:name])
    category = "#{main}/registrant/lobbyists"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.mentions_in_regulations(args)
    self.org_id_lookup(args[:name])
    category = "#{main}/regulations_text"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.regulatory_submissions(args)
    self.org_id_lookup(args[:name])
    category = "#{main}/regulations_submitter"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.faca_memberships(args)
    self.org_id_lookup(args[:name])
    category = "#{main}/faca"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.fec_summary(args)
    self.org_id_lookup(args[:name])
    category = "#{main}/fec_summary"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

end
