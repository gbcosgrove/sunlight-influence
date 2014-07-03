require_relative 'call_constructor_module.rb'

class Sunlight::Influence::Organization < OpenStruct
  extend CallConstructor

  main = "aggregates/org"

  def self.org_id_lookup(name)
    entity = Sunlight::Influence::EntitySearch.find_organization(name)
    entity_id = entity[:entity_id]
  end

  def self.top_organizations_by_contributions_given(args)
    category = "#{main}/top_"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.top_recipients(args)
    self.org_id_lookup(args[:name])
    category = "#{main}/#{entity_id}/recipients"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.pac_recipients(args)
    self.org_id_lookup(args[:name])
    category = "#{main}/#{entity_id}/recipients_pacs"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.party_breakdown(args)
    self.org_id_lookup(args[:name])
    category = "#{main}/#{entity_id}/recipients/party_breakdown"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.state_federal_breakdown(args)
    self.org_id_lookup(args[:name])
    category = "#{main}/#{entity_id}/recipients/level_breakdown"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.lobbying_registrants(args)
    self.org_id_lookup(args[:name])
    category = "#{main}/#{entity_id}/registrants"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.lobbying_issues(args)
    self.org_id_lookup(args[:name])
    category = "#{main}/#{entity_id}/issues"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.bills(args)
    self.org_id_lookup(args[:name])
    category = "#{main}/#{entity_id}/bills"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.lobbyists(args)
    self.org_id_lookup(args[:name])
    category = "#{main}/#{entity_id}/lobbyists"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.registrant_clients(args)
    self.org_id_lookup(args[:name])
    category = "#{main}/#{entity_id}/registrant/clients"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.registrant_issues(args)
    self.org_id_lookup(args[:name])
    category = "#{main}/#{entity_id}/registrant/issues"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.registrant_bills(args)
    self.org_id_lookup(args[:name])
    category = "#{main}/#{entity_id}/registrant/bills"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.registrant_lobbyists(args)
    self.org_id_lookup(args[:name])
    category = "#{main}/#{entity_id}/registrant/lobbyists"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.mentions_in_regulations(args)
    self.org_id_lookup(args[:name])
    category = "#{main}/#{entity_id}/regulations_text"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.regulatory_submissions(args)
    self.org_id_lookup(args[:name])
    category = "#{main}/#{entity_id}/regulations_submitter"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.faca_memberships(args)
    self.org_id_lookup(args[:name])
    category = "#{main}/#{entity_id}/faca"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.fec_summary(args)
    self.org_id_lookup(args[:name])
    category = "#{main}/#{entity_id}/fec_summary"
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

end
