require 'sunlight/influence'

class Sunlight::Influence::BundledCampaignContributions
  attr_reader :bundler_name, :report_type, :semi_annual_amount, :standardized_firm_name, :state, :street_addr2, :street_addr1,
              :zip_code, :end_date, :city, :committee_name, :committee_fec_id, :standardized_lobbyist_name, :report_year,
              :pdf_url, :starndaredized_recipient_name, :start_date, :bundler_employer, :bundler_fec_id, :file_num,
              :period_amount


  def intialize(attrs)

    self.bundler_name                      = [:bundler_name]
    self.report_type                       = [:report_type]
    self.semi_annual_amount                = [:semi_annual_amount]
    self.standardized_firm_name            = [:standardized_firm_name]
    self.state                             = [:state]
    self.street_addr2                      = [:street_addr2]
    self.street_addr1                      = [:street_addr1]
    self.zip_code                          = [:zip_code]
    self.end_date                          = [:end_date]
    self.city                              = [:city]
    self.committee_name                    = [:committee_name]
    self.committee_name                    = [:committee_fec_id]
    self.standardized_lobbyist_name        = [:standardized_lobbyist_name]
    self.report_year                       = [:report_year]
    self.pdf_url                           = [:pdf_url]
    self.starndardized_recipient_name      = [:starndardized_recipient_name]
    self.start_date                        = [:start_date]
    self.bundler_employer                  = [:bundler_employer]
    self.bundler_fec_id                    = [:bundler_fec_id]
    self.file_num                          = [:file_num]
    self.period_amount                     = [:period_amount]
  end

end
