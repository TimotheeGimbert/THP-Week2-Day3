def getRandomInt(n)
  randInt = rand(n)+1 # gives random between 0 and 6
  return randInt
end

def playRound()
  randInt = getRandomInt(6)
  winner = "nobody"
  if (randInt == 5 || randInt == 6)
    winner = "user"
    puts "!!!!!!!!!! Yeah you win the round !!!!!!!!!!"
  elsif (randInt == 1)
    winner = "computer"
    puts "________________ Too bad, you loose this round"
  else
    winner = "nobody"
    puts "Nobody wins" 
  end 
  return winner
end

def stepUp(step)
  step += 1
  puts "!!!!!!!!!!  and you go up to step #{step} !!!!!!!!!!"
  return step
end

def stepDown(step)
  step -= 1
  puts "________________ woops, you go down step #{step} :s"
  return step
end

def stepUpdate(winner, userStep)
  if winner == "user"
    userStep = stepUp(userStep)
  elsif winner == "computer"
    if (userStep > 0) 
      userStep = stepDown(userStep)
    end
  else
    puts "You stay on step #{userStep}" 
  end
  return userStep
end

def playGame()
  step = 0
  while (step < 10) do
    roundWinner = playRound()
    step = stepUpdate(roundWinner, step)
  end
end

def perform()
  playGame()
  puts "Yes congrats !!! You WIN the game!"
end

perform()