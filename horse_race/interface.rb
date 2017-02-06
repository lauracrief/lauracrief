require race.rb
#1. Print welcome
puts "Welcome to le Wagon's horse race"

# 2. Get horses
# store 5 horses names in an array quand on a une liste le mieux cest de les stoker dans un arra
horses = ["plume", "radis", "elodie", "fast", "furious"]
# je vais iterer sur mon tableau, on va avoir besoin de recuper le nom du cheval et sa position dans le tableau le meilleur iterateur est donc .each_with_index
  # jevais simplement faire de l'affichage ici
puts "horses on the start line are:"
display_horses(horses)
# ask user which horse is the winner
puts "What's your bet?"
print '> '

# get horse name with its index
number = gets.chomp.to_i

 # store horse name
bet = horses [number - 1]
# 4. Run the race
shuffled_horses = []
4. times do |lap|
# each lap, shuffle the array
shuffled_horses = horses.shuffle
#display horse order
puts "here is the ranking at lap #{lap +1 }:"
display_horses(shuffled_horses)
sleep 2
puts ''
end

if bet == shuffled_horses [0]
  puts "{bet} wins the race, so do you! you're rich"
else
    puts "#{shuffled_horses[0]} wins the race, you lost."
end
# 5. Print results
  # compare user bet with first of the list
  # if user wins display he wins
  # else display he loses
