module Shout

  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
  	words.upcase + "!!!" + " :)"
  end

end

puts Shout.yell_happily("woohooo")
puts Shout.yell_angrily("awww skeet skeet gawd damn")
