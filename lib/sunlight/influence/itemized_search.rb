require_relative 'call_constructor_module.rb'

class Sunlight::Influence::ItemizedSearch < OpenStruct
  extend CallConstructor


## Parameters: :format, :page, :per_page, :amount, :contributor_ft, :contributor_state, :cycle, :date,
## Parameters: :for_against. :organization_ft, :recipient_ft, :recipient_state, :seat, :transaction_namespace

  def self.itemized_search_call(options)

  end

  def self.campaign_contributions(options)
    if !options.empty?
      options[:parameters] = string_constructor(options)
    end
    options[:category] = "contributions"
    options = {category: options[:category], parameters: options[:parameters]}
    call = uri_builder(options)
    sunlight_call(call)
  end

  def self.bundled_campaign_contributions(options)
    if !options.empty?
      options[:parameters] = string_constructor(options)
    end
    options[:category] = "contributions/bundled"
    options = {category: options[:category], parameters: options[:parameters]}
    call = uri_builder(options)
    sunlight_call(call)
  end

  def self.contractor_misconduct(options)
    if !options.empty?
      options[:parameters] = string_constructor(options)
    end
    options[:category] = "misconduct"
    options = {category: options[:category], parameters: options[:parameters]}
    call = uri_builder(options)
    sunlight_call(call)
  end

  def self.earmarks(options)
    if !options.empty?
      options[:parameters] = string_constructor(options)
    end
    options[:category] = "earmarks"
    options = {category: options[:category], parameters: options[:parameters]}
    call = uri_builder(options)
    sunlight_call(call)
  end

  def self.epa_echo(options)
    if !options.empty?
      options[:parameters] = string_constructor(options)
    end
    options[:category] = "epa"
    options = {category: options[:category], parameters: options[:parameters]}
    call = uri_builder(options)
    sunlight_call(call)
  end

  def self.faca_memberships(options)
    if !options.empty?
      options[:parameters] = string_constructor(options)
    end
    options[:category] = "faca"
    options = {category: options[:category], parameters: options[:parameters]}
    call = uri_builder(options)
    sunlight_call(call)
  end

  def self.federal_contracts(options)
    if !options.empty?
      options[:parameters] = string_constructor(options)
    end
    options[:category] = "contracts"
    options = {category: options[:category], parameters: options[:parameters]}
    call = uri_builder(options)
    sunlight_call(call)
  end

  def self.federal_grants(options)
    if !options.empty?
      options[:parameters] = string_constructor(options)
    end
    options[:category] = "grants"
    options = {category: options[:category], parameters: options[:parameters]}
    call = uri_builder(options)
    sunlight_call(call)
  end

  def self.lobbying_registrations(options)
    if !options.empty?
      options[:parameters] = string_constructor(options)
    end
    options[:category] = "lobbying"
    options = {category: options[:category], parameters: options[:parameters]}
    call = uri_builder(options)
    sunlight_call(call)
  end

end
