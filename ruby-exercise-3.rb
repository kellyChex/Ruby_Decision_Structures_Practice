#The exercise is to make the last exercise answer clearer, shorter and simpler using methods
def to_words s
  s.split /[\W]+/
end

def starts_with_vowel s
  #FIXME Errors on an empty string
  #w{a e i o u} is a quick way of writing ['a', 'e', 'i', 'o', 'u']
  %w{a e i o u}.include? s[0].downcase #Can you see why we use downcase here?
end

def offWords(s)
  to_words(s).count % 2 == 1
end

def rhymingPairs(s)
  split_pattern = /[\W]+/
  i = 0
  while i < s.count
    lastWord1st = s[i].split(split_pattern).last
    lastWord2nd = s[i+1].split(split_pattern).last
    lastWord3rd = s[i+2].split(split_pattern).last
    lastWord4th = s[i+3].split(split_pattern).last
    lastWord5th = s[i+4].split(split_pattern).last
    lastWord6th = s[i+5].split(split_pattern).last
    lastWord7th = s[i+6].split(split_pattern).last
    lastWord8th = s[i+7].split(split_pattern).last

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
end


snowy = File.read 'the-man-from-snowy-river.txt'

snowy_lines = snowy.lines
snowy_words = to_words snowy

Example
puts "Here are the lines of Snowy that start with a vowel"

snowy_lines.each do |line|
  puts line if starts_with_vowel line
end

puts
puts "Here are the lines of Snowy that have an odd number of words"
#hint: a % b is the remainder after you divide a by b (called "mod" or "modulus")
# for example 17 % 2 == 1
snowy_lines.each do |line|
  puts line if offWords(line)
end

# puts
puts "Here are all the rhyming pairs from the ends of the Snowy lines"

puts rhymingPairs(snowy_lines)
