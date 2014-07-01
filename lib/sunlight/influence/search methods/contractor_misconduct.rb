require 'sunlight/influence'

class Sunlight::Influence::ContractorMisconduct
  attr_reader :dispostion, :penalty_amount, :date_year, :date_significance, :enforcement_agency, :contractor,
              :instance, :synopsis, :url, :contracting_party, :date, :misconduct_type, :court_type

  def initialize(attrs)

   self.disposition         = attrs[:dispostion]
   self.penalty_amount      = attrs[:penalty_amount]
   self.date_year           = attrs[:date_year]
   self.date_significance   = attrs[:date_significance]
   self.enforcement_agency  = attrs[:enforcement_agency]
   self.contractor          = attrs[:contractor]
   self.instance            = attrs[:instance]
   self.synopsis            = attrs[:synopsis]
   self.url                 = attrs[:url]
   self.contracting_party   = attrs[:contracting_party]
   self.date                = attrs[:date]
   self.misconduct_type     = attrs[:misconduct_type]
   self.court_type          = attrs[:court_type]

  end

end
