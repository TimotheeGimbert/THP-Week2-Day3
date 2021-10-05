def getInput()
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  print "> "
  input = gets.chomp.to_i
  while (Integer(input) === false || input <= 0 || input >= 26) do
    puts "Merci de choisir un entier positif entre 1 et 25 ..."
    print "> "
    input = gets.chomp.to_i
  end
  return input
end
  
def drawHalfPyramid(n)
  for i in 1..n do # FOR each line n
    for j in 1..(n-i) do # FOR each free spot on the line n
      print " "
    end
    for j in (n-i + 1)..n do # FOR each drawing spot on the line n
      print "#"
    end
    puts
  end
end
  
def half_pyramid()
  nbFloors = getInput()
  puts "Voici une pyramide à #{nbFloors} étages :"
  drawHalfPyramid(nbFloors)
end

def drawFullPyramid(n)
  for i in 1..n do
    nbSpaces = n - i
    for j in 0..nbSpaces do
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
  nbFloors = getInput()
  puts "Voici une pyramide à #{nbFloors} étages :"
  drawFullPyramid(nbFloors)
end

full_pyramid()