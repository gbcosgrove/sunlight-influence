# require 'sunlight/influence'

class Sunlight::Influence::FederalGrant < OpenStruct
  attr_reader :progsrc, :principal_place_state, :non_fed_funding_amount, :rec_flag, :recipient_zip, :fiscal_year,
              :progsrc_subacnt_code, :record_type, :cfda_program_num, :ending_date, :recipient_type,
              :transaction_status, :principal_place_cc, :face_loan_guarn, :principal_place_cd, :total_funding_amount,
              :orig_sub_guran, :principal_place_code, :agency_code, :recipient_county_code, :assistance_type,
              :uri, :recipient_country_code, :maj_agency_cat, :id, :starting_date, :duns_conf_code, :account_title,
              :project_description, :recipient_city_code, :duns_no, :recipient_county_name, :cfda_program_title,
              :recip_cat_type, :sai_number, :obligation_action_date, :fyq, :progrsrc_agen_code, :federal_award_mod,
              :principal_place_state_code, :recipient_name, :reciep_addr2, :reciep_addr3, :reciep_addr1, :recipient_cd,
              :recipient_city_name, :federal_award_id, :fed_funding_amount, :recipient_state_code, :unique_transaction_id,
              :agency_name, :principal_place_zip, :fyq_correction, :action_type, :correction_late_ind,
              :asst_cat_type

  def initialize(attrs)
    attrs.each do |k,v|
      self.result = OpenStruct.new(k[v])
    end
  end

  def initialize(attrs)
    self.progsrc                    = [:progsrc]
    self.principal_place_state      = [:principal_place_state]
    self.non_fed_funding_amount     = [:non_fed_funding_amount]
    self.rec_flag                   = [:recipient_zip]
    self.recipient_zip              = [:recipient_zip]
    self.fiscal_year                = [:fiscal_year]
    self.progsrc_subacnt_code       = [:progsrc_subacnt_code]
    self.record_type                = [:record_type]
    self.cfda_program_num           = [:cfda_program_num]
    self.ending_date                = [:ending_date]
    self.recipient_type             = [:recipient_type]
    self.transaction_status         = [:transaction_status]
    self.principal_place_cc         = [:principal_place_cc]
    self.face_loan_guarn            = [:face_loan_guarn]
    self.principal_place_cd         = [:principal_place_cd]
    self.total_funding_amount       = [:total_funding_amount]
    self.orig_sub_guran             = [:orig_sub_guran]
    self.principal_place_code       = [:principal_place_code]
    self.agency_code                = [:agency_code]
    self.recipient_county_code      = [:recipient_county_code]
    self.assistance_type            = [:assistance_type]
    self.uri                        = [:uri]
    self.recipient_country_code     = [:recipient_country_code]
    self.maj_agency_cat             = [:maj_agency_cat]
    self.id                         = [:id]
    self.starting_date              = [:starting_date]
    self.duns_conf_code             = [:duns_conf_code]
    self.account_title              = [:account_title]
    self.project_description        = [:project_description]
    self.recipient_city_code        = [:recipient_city_code]
    self.duns_no                    = [:duns_no]
    self.recipient_county_name      = [:recipient_county_name]
    self.cfda_program_title         = [:cfda_program_title]
    self.recip_cat_type             = [:recip_cat_type]
    self.sai_number                 = [:sai_number]
    self.obligation_action_date     = [:obligation_action_date]
    self.fyq                        = [:fyq]
    self.progrsrc_agen_code         = [:progrsrc_agen_code]
    self.federal_award_mod          = [:federal_award_mod]
    self.principal_place_state_code = [:principal_place_state_code]
    self.recipient_name             = [:recipient_name]
    self.reciep_addr2               = [:reciep_addr2]
    self.reciep_addr3               = [:reciep_addr3]
    self.reciep_addr1               = [:reciep_addr1]
    self.recipient_cd               = [:recipient_cd]
    self.recipient_city_name        = [:recipient_city_name]
    self.federal_award_id           = [:federal_award_id]
    self.fed_funding_amount         = [:fed_funding_amount]
    self.recipient_state_code       = [:recipient_state_code]
    self.unique_transaction_id      = [:unique_transaction_id]
    self.agency_name                = [:agency_name]
    self.principal_place_zip        = [:principal_place_zip]
    self.fyq_correction             = [:fyq_correction]
    self.action_type                = [:action_type]
    self.correction_late_ind        = [:correction_late_ind]
    self.asst_cat_type              = [:asst_cat_type]
  end

end














