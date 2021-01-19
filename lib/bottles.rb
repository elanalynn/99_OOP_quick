class Bottles 
  def verse(n)
    if n == 0
      last_verse
    else
      "#{bottle_segment(n)} of beer on the wall, " +
      "#{bottle_segment(n)} of beer.\n" +
      "Take #{n != 1 ? 'one' : 'it'} down and pass it around, " +
      "#{bottle_segment(n - 1)} of beer on the wall.\n"
    end
  end

  def verses(start_verse, end_verse)
    vs = ""
    start_verse.downto(end_verse) do |n| 
      vs << verse(n) + "\n"
    end
    vs.chomp
  end

  def song
    verses(99,0)
  end

  private

  def bottle_segment(p)
    if p == 1
      "#{p} bottle"
    elsif p == 0
      "no more bottles"
    else
      "#{p} bottles"
    end
  end

  def last_verse
    "No more bottles of beer on the wall, " +
    "no more bottles of beer.\n" +
    "Go to the store and buy some more, " +
    "99 bottles of beer on the wall.\n"
  end
end