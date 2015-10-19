snowy = File.read 'the-man-from-snowy-river.txt'

snowy_lines = snowy.lines

split_pattern = /[\W]+/
snowy_words = snowy.split split_pattern

#Example
puts "Here are the lines of Snowy that start with a vowel"

snowy_lines.each do |line|
  c = line[0].downcase
  puts '  ' + line if c == 'a' || c == 'e' || c == 'o' || c == 'u'
end

puts
puts "Here are the lines of Snowy that have an odd number of words"
#hint: a % b is the remainder after you divide a by b (called "mod" or "modulus")
# for example 17 % 2 == 1

snowy_lines.each do |line|
  splitLines = line.split split_pattern
  countedWords = splitLines.count
  puts " " + line if countedWords % 2 == 1
end

puts
puts "Here is Snowy double-spaced"
snowy_lines.each do |line|
  puts line
  puts
end


puts
puts "Here are all the rhyming pairs from the ends of the Snowy lines"
i = 0
  while i < snowy_lines.count
    # if snowy_lines[i] == ""
    #   i = i + 1
      # next
    # end
    lastWord1st = snowy_lines[i].(split_pattern).last
    lastWord2nd = snowy_lines[i+1].split(split_pattern).last
    lastWord3rd = snowy_lines[i+2].split(split_pattern).last
    lastWord4th = snowy_lines[i+3].split(split_pattern).last
    lastWord5th = snowy_lines[i+4].split(split_pattern).last
    lastWord6th = snowy_lines[i+5].split(split_pattern).last
    lastWord7th = snowy_lines[i+6].split(split_pattern).last
    lastWord8th = snowy_lines[i+7].split(split_pattern).last
    puts lastWord1st + " " + lastWord3rd
    puts
    puts lastWord2nd + " " + lastWord4th
    puts
    puts lastWord5th + " " + lastWord7th
    puts
    puts lastWord6th + " " + lastWord8th
    puts
    i += 9
end
# hints:
# you can access snowy_lines[i], snowy_lines[i + 1] etc each time through the loop
# split each line into words using split_pattern
# get the last word from the words using .last
# grab the last words four at a time and then print out the first and third,
# then the second and fourth
# puts i += 9 # This is a short way of writing i = i + 1
#   i = i+1
#   end
# end
#
#
# puts "Here are all the rhyming pairs from the ends of the Snowy lines"
# i = 0
# snowy_lines[i]
# while i < snowy_lines.count
#   lastWordArray = Array.new
#   j = 0
#   while j < snowy_lines.count
# snowy_lines.each do |line|
#   splitLines = line.split split_pattern
#   lastWordOfLine = splitLines.last
#
#   lastWordArray.push(lastWordOfLine)
#
#       j +=1
#   end
#   if  lastWordArray[i]
#   puts lastWordArray
#   x = 4
#   x.times {|c| p lastWordOfLine c}
#   snowy_lines[i + 1]
#   end
#
#   hints:
#   you can access snowy_lines[i], snowy_lines[i + 1] etc each time through the loop
#   split each line into words using split_pattern
#   get the last word from the words using .last
#   grab the last words four at a time and then print out the first and third,
#   then the second and fourth
#   puts i += 9 # This is a short way of writing i = i + 1
#     i = i+1
#   end
# end
#
# ____________
#
# evenArray = Array.new
# oddArray = Array.new
# for x in [1,2,3,4]
#   puts snowy_lines.length.to_s + " " +i.to_s
#   line = snowy_lines[i]
#   splitLines = line.split split_pattern
#   lastWordOfLine = splitLines.last
#   puts lastWordOfLine
#   if i % 2 == 0
#     evenArray << lastWordOfLine
#   else
#     oddArray << lastWordOfLine
#   end
#   i = i + 1
# end
# puts evenArray
# puts oddArray
# end
