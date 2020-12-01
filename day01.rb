# Before you leave, the Elves in accounting just need you to fix your expense report (your puzzle input); apparently, something isn't quite adding up.
# Specifically, they need you to find the two entries that sum to 2020 and then multiply those two numbers together.
# For example, suppose your expense report contained the following:

# 1721, 979, 366, 299, 675, 1456
# In this list, the two entries that sum to 2020 are 1721 and 299. Multiplying them together produces 1721 * 299 = 514579, so the correct answer is 514579.

# Of course, your expense report is much larger. Find the two entries that sum to 2020; what do you get if you multiply them together?

# get list of numbers from file
numbers = []

File.open('day01.txt', 'r') do |f|
  f.each_line do |line|
    numbers.push line.to_i
  end
end

test_numbers = [1721, 979, 366, 299, 675, 1456]

# O(n^3) solution
numbers.each do |x|
  numbers.each do |y|
    unless x == y
      numbers.each do |z|
        unless (x || y) == z
          if (x + y + z == 2020)
            puts x * y * z
            return
          end     
        end
      end
    end
  end
end
