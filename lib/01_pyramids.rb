def getInput()
  print "> "
  input = gets.chomp.to_i
  while (Integer(input) === false || input <= 0 || input >= 26) do
    puts "Merci de choisir un entier positif entre 1 et 25 ..."
    print "> "
    input = gets.chomp.to_i
  end
  return input
end
  
def draw_half_pyramid(n)
  for i in 1..n do
    for j in 1..(n-i) do
      print " "
    end
    for j in (n-i + 1)..n do
      print "#"
    end
    puts
  end
end
  
def half_pyramid()
  puts "Salut, bienvenue dans ma demi pyramide ! Combien d'étages veux-tu ?"
  nbFloors = getInput()
  puts "Voici une demi-pyramide à #{nbFloors} étages :"
  draw_half_pyramid(nbFloors)
end

def draw_full_pyramid(n)
  for i in 1..n do
    nbSpaces = n - i
    for j in 1..nbSpaces do
        print " "
    end
    nbPoints = 1 + 2 * (i -1)
    for j in 1..nbPoints do
        print "#"
    end
    puts
  end
end

def full_pyramid()
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  nbFloors = getInput()
  puts "Voici une pyramide à #{nbFloors} étages :"
  draw_full_pyramid(nbFloors)
end

def addBottom_full_pyramid(n)
  for l in 1..n do
    nbSpaces = l 
    nbSpaces.times do
      print " "   
    end
    nbPoints = (n*2) - (2*l) + 1
    nbPoints.times do
      print "#"
    end
    puts
  end
end

def wtf_pyramid()
  puts "Salut, bienvenue dans ma super pyramide losange ! Combien d'étages veux-tu ?"
  nbFloors = getInput()
  while (nbFloors.even? === true) do
    puts "It cannot be an even number ... !"
    nbFloors = getInput()
  end
  puts "Voici la pyramide losange à #{nbFloors} étages :"
  draw_full_pyramid((nbFloors+1)/2)
  addBottom_full_pyramid(nbFloors/2)
end


def perform()
  half_pyramid()
  full_pyramid()
  wtf_pyramid()
end

perform()