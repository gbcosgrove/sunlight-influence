# require 'sunlight/influence'

class Sunlight::Influence::Politician
  attr_reader :count, :name, :state, :seat, :amount, :party, :id

  def initialize(attrs)
    self.count  = attrs[:count]
    self.name   = attrs[:name]
    self.state  = attrs[:state]
    self.seat   = attrs[:seat]
    self.amount = attrs[:party]
    self.id     = attrs[:id]
  end

end
