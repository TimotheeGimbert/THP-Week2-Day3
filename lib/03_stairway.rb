def getRandomInt(n)
  randInt = rand(n)+1 # gives random between 0 and 6
  return randInt
end

def playRound()
  randInt = getRandomInt(6)
  winner = "nobody"
  if (randInt == 5 || randInt == 6)
    winner = "user"
  elsif (randInt == 1)
    winner = "computer"
  else
    winner = "nobody"
  end 
  return winner
end

def playGame()
  step = 0
  while (step < 10) do
    roundWinner = playRound()
    if roundWinner == "user"
      step += 1
      puts "Yeah you win the round !"
      puts "... and you go up to step #{step} !!!"
    elsif roundWinner == "computer"
      puts "                              Too bad, you loose this round ..."
      if (step > 0) 
        step -= 1
        puts "                             ...woops, you go down step #{step} :s"
      end
    else
      puts "                    nobody wins this one" 
      puts "                    you stay on step #{step}"
    end
  end
end

def perform()
  playGame()
  puts "Yes congrats !!! You WIN the game!"
end

perform()