require 'sunlight/influence'

class Sunlight::Influence::FacaMemberships
  attr_reader :committee_url, :member_firstlast, :agency_abbr, :end_date, :pay_plan, :represented_group, :appointment_term,
              :member_designation, :org_id, :appointment_type, :affiliation, :agency_name, :member_name,
              :pay_source, :committee_name, :chair, :org_name, :start_date

  def initialize(attrs)

    self.committee_url       = [:committee_url]
    self.member_firstlast    = [:member_firstlast]
    self.agency_abbr         = [:agency_abbr]
    self.end_date            = [:end_date]
    self.pay_plan            = [:pay_plan]
    self.represented_group   = [:represented_group]
    self.appointment_term    = [:appointment_term]
    self.member_designation  = [:member_designation]
    self.org_id              = [:org_id]
    self.appointment_type    = [:appointment_type]
    self.affiliation         = [:affiliation]
    self.agency_name         = [:agency_name]
    self.member_name         = [:member_name]
    self.pay_source          = [:pay_source]
    self.committee_name      = [:committee_name]
    self.chair               = [:chair]
    self.org_name            = [:org_name]
    self.start_date          = [:start_date]
  end

end
