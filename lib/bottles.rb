class BottlesSong
  def sing
    verses(99, 0)
  end

  def verses(upper_bound, lower_bound)
    upper_bound.downto(lower_bound).map {|n| verse(n) + "\n"}.join
  end

  def verse(number)
    verse = Verse.new(strategy(number))
    verse.to_s
  end

  def strategy number
    begin
      Object.const_get('VerseStrategy' + number.to_s).new number
    rescue NameError
      VerseStrategy.new number
    end
  end


end
