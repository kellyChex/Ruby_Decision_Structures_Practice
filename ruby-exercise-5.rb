#When doing this exercise, use methods when appropriate to keep things organized.

require "set"

snowy = File.read 'the-man-from-snowy-river.txt'
clancy = File.read 'clancy-of-the-overflow.txt'
words = File.read '/usr/share/dict/words'
snowy_words = snowy.split /[^\w]+/
clancy_words = clancy.split /[^\w]+/
snowy_case = snowy_words.map(&:capitalize)
snowy_case = snowy_case /([a-zA-Z]+?)(s\b|\b)/
clancy_case = clancy_words.map(&:downcase)



#A set is a data structure that can have things added and removed, and you can ask if things are in it. You can make one from an array
dictionary = Set.new File.read('/usr/share/dict/words').lines.map{|w| w.chomp}

dictionary = dictionary.map(&:capitalize)

#We can treat arrays as sets, and use + for union, - for difference
puts "Words in snowy but not clancy"
puts (snowy_case - clancy_case).uniq.join ', '

puts
puts "... and the reverse"
puts (clancy_case - snowy_case).uniq.join ', '

#The above are great, but note that we get both 'There' and 'there' separately (and others). Fix that.

puts
puts "The longest word in snowy is"
puts snowy_case.max_by(&:length)

#Here, find the words that are in Snowy but not in the dictionary
puts
puts "Names in Snowy are:"
dict1 = dictionary.to_a
puts (snowy_case - dict1).uniq.join ', '
#Look up the documentation for Set to see how to test if a word is in it or not

puts
puts "Names in both Snowy and Clancy:"

#Change this so it uses an array rather than a set. Marvel at how much slower it is.
#You can time how long something takes to run in bash by doing time before the command.
#So time ruby ruby-exercise-5.rb will tell you how long that took to run
