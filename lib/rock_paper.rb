class String

  define_method(:beats?) do |player_two|

    if self.eql?("rock").&(player_two.eql?("scissors"))
      "Player 1 Wins"
    elsif self.eql?("rock").&(player_two.eql?("paper"))
      "Player 2 Wins"
    elsif self.eql?("scissors").&(player_two.eql?("rock"))
      "Player 2 Wins"
    elsif self.eql?("scissors").&(player_two.eql?("paper"))
      "Player 1 Wins"
    elsif self.eql?("paper").&(player_two.eql?("scissors"))
      "Player 2 Wins"
    elsif self.eql?("paper").&(player_two.eql?("rock"))
      "Player 1 Wins"
    else
      "Try again."

    end


  end

end
