require 'sunlight/influence'

class Sunlight::Influence::EntityOverview
    attr_reader :name, :totals, :year, :faca_committee_count, :faca_member_count, :regs_submitted_docket_count,
                :earmark_count, :regs_docket_count, :recipient_amount, :fec_summary_count, :independent_expenditure_amount, :non_firm_spending,
                :grant_count, :contract_amount, :earmark_amount, :loan_count, :contract_count, :contributor_count,
                :regs_document_count, :recipient_count, :firm_income, :regs_submitted_docket_count, :loan_amount,
                :epa_actions_count, :contractor_misconduct_count, :fec_total_raised, :lobbying_count, :contributor_amount,
                :grant_amount


    def initialize(attrs)
        self.name                               = attrs[:name]
        self.totals                             = attrs[:totals]
        self.year                               = attrs[:year]
        self.faca_committee_count               = attrs[:faca_committee_count]
        self.faca_member_count                  = attrs[:faca_member_count]
        self.regs_submitted_docket_count        = attrs[:regs_submitted_docket_count]
        self.earmark_count                      = attrs[:earmark_count]
        self.regs_docket_count                  = attrs[:regs_docket_count]
        self.recipient_amount                   = attrs[:recipient_amount]
        self.fec_summary_count                  = attrs[:fec_summary_count]
        self.independent_expenditure_amount     = attrs[:independent_expenditure_amount]
        self.non_firm_spending                  = attrs[:non_firm_spending]
        self.grant_count                        = attrs[:grant_count]
        self.contract_amount                    = attrs[:contract_amount]
        self.earmark_amount                     = attrs[:earmark_amount]
        self.loan_count                         = attrs[:loan_count]
        self.contract_count                     = attrs[:contract_count]
        self.contributor_count                  = attrs[:contributor_count]
        self.regs_document_count                = attrs[:regs_document_count]
        self.recipient_count                    = attrs[:recipient_count]
        self.firm_income                        = attrs[:firm_income]
        self.regs_submitted_docket_count        = attrs[:regs_submitted_docket_count]
        self.loan_amount                        = attrs[:loan_amount]
        self.epa_actions_count                  = attrs[:epa_actions_count]
        self.contractor_misconduct_count        = attrs[:contractor_misconduct_count]
        self.fec_total_raised                   = attrs[:fec_total_raised]
        self.lobbying_count                     = attrs[:lobbying_count]
        self.contributor_amount                 = attrs[:contributor_amount]
        self.grant_amount                       = attrs[:grant_amount]
    end

    def self.retrieve_overview(entity_id, cycle)
        uri = URI("#{Sunlight::Influence::BASE_URI}/entities/#{entity_id}.json?cycle=#{cycle}&apikey=#{Sunlight::Influence.api_key}")
        JSON.load(Net:HTTP.get(uri))["results"].collect{|json| new(json)}
    end

end
