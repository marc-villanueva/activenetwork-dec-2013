class Verse
  extend Forwardable

  def_delegators :@strategy, :action, :current_inventory, :future_inventory, :current_container, :future_container

  def initialize strategy
    @strategy = strategy
  end

  def to_s
    "#{current_inventory} #{current_container} of #{liquid} #{location}, ".capitalize +
    "#{current_inventory} #{current_container} of #{liquid}.\n" +
    "#{action}, " +
    "#{future_inventory} #{future_container} of #{liquid} #{location}.\n"
  end

  def liquid
    'beer'
  end

  def location
    'on the wall'
  end

end