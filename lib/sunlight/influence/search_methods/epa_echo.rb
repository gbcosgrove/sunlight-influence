class Sunlight::Influence::EpaEcho
  attr_reader :penalty_enfotpa, :penalty_enfccaa, :penalty_enfcslp, :first_date, :num_defendants, :case_name,
              :penalty, :last_date, :penalty_enfops, :first_date_significance, :penalty_enfotsa, :location_addresses,
              :last_date_significance, :defendants, :case_num

  def initialize(attrs)
    self.penalty_enfotpa          = [:penalty_enfotpa]
    self.penalty_enfccaa          = [:penalty_enfccaa]
    self.penalty_enfcslp          = [:penalty_enfcslp]
    self.first_date               = [:first_date]
    self.defendants               = [:num_defendants]
    self.case_name                = [:case_name]
    self.penalty                  = [:penalty]
    self.last_date                = [:last_date]
    self.penalty_enfops           = [:penalty_enfops]
    self.first_date_significance  = [:first_date_significance]
    self.penalty_enfotsa          = [:penalty_enfotsa]
    self.location_addresses       = [:location_addresses]
    self.last_date_significance   = [:last_date_significance]
    self.defendants               = [:defendants]
    self.case_num                 = [:case_num]
  end
end
