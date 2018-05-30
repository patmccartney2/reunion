class Activity
  attr_reader :name,
              :price

  attr_accessor :accounting_roster,
                :activity_roster,
                :participant

  def initialize(activity_name, price)
    @activity_name = name
    @price = price
    @accounting_roster = {}
    @activity_roster = []
  end

  def gen_hash_with_name_and_price
    @accounting_roster[@participant] = @price
  end

  def add_participant(new_participant)
    @activity_roster << new_participant
    @accounting_roster[new_participant] = @price
  end

  def gen_total_cost
      total_activity_cost = @price / @activity_roster.length
  end




end
