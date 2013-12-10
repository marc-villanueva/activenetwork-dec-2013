require 'forwardable'

class Verse
  attr_reader :verse_number

  def initialize verse_number
    @verse_number = verse_number
  end

  def to_s
    bottle = verse_number.to_bottle_number
    "#{bottle} of #{liquid} #{location}, ".capitalize +
    "#{bottle} of #{liquid}.\n" +
    "#{bottle.action}, " +
    "#{bottle.pred} of #{liquid} #{location}.\n"
  end

  def liquid
    'beer'
  end

  def location
    'on the wall'
  end

end