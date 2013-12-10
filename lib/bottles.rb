class BottlesSong
  def sing
    verses 99, 0
  end

  def verses upper_bound, lower_bound
    upper_bound.downto(lower_bound).map {|n| verse(n) + "\n"}.join
  end

  def verse number
    verse = Verse.new number
    verse.to_s
  end
end
