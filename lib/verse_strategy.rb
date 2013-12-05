class VerseStrategy

  attr_reader :number

  def initialize number
    @number = number
  end

  def action
    "Take #{pronoun} down and pass it around"
  end

  def current_inventory
    number
  end

  def future_inventory
    number - 1
  end

  def current_container
    "bottles"
  end

  def future_container
    "bottles"
  end

  def pronoun
    "one"
  end
end