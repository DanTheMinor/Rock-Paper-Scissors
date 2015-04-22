class String
  define_method(:beat) do |play|
    player1 = self
    player2 = play
    if player1=="rock" && player2==("scissors")
      1
    elsif player1=="rock" && player2==("paper")
      0
    elsif player1=="scissors" && player2==("paper")
      1
    elsif player1=="scissors" && player2==("rock")
      0
    elsif player1=="paper" && player2==("rock")
      1
    elsif player1=="paper" && player2==("scissors")
      0
    elsif player1=="rock" && player2==("rock")
      2
    elsif player1=="paper" && player2==("paper")
      2
    elsif player1=="scissors" && player2==("scissors")
      2
    end
    
  end
end
