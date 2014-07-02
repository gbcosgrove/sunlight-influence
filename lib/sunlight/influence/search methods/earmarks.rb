# require 'sunlight/influence'

class Sunlight::Influence::Earmarks
  attr_reader :description, :recipients, :notes, :bill, :undisclosed, :locations, :fiscal_year, :omni_amount, :house_amount,
              :senate_amount, :bill_subsection, :members, :bill_section, :final_amount, :presidential, :budget_amount

  def initialize(attrs)

   self.description     = [:description]
   self.recipients      = [:recipients]
   self.notes           = [:notes]
   self.bill            = [:bill]
   self.undisclosed     = [:undisclosed]
   self.locations       = [:locations]
   self.fiscal_year     = [:fiscal_year]
   self.omni_amount     = [:omni_amount]
   self.house_amount    = [:house_amount]
   self.senate_amount   = [:senate_amount]
   self.bill_subsection = [:bill_subsection]
   self.members         = [:members]
   self.bill_section    = [:bill_section]
   self.final_amount    = [:final_amount]
   self.presidential    = [:presidential]
   self.budget_amount   = [:budget_amount]
  end
end
