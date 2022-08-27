def compareTriplets(a, b)
  # Write your code here
  score = [0, 0]
  index = 0
  3.times do
    if a[index] > b[index]
      score[0] += 1
    elsif b[index] > a[index]
      score[1] += 1
    end
    index += 1
  end
  return score
end

# p compareTriplets([1, 2, 3], [3, 2, 1])

def diagonalDifference(arr)
  diagonal1 = []
  diagonal2 = []
  arr.each_with_index do |arr1, index1|
    index3 = arr1.length - 1
    arr1.each_with_index do |item, index2|
      if index1 == index2
        diagonal1 << item
      end
      if index1 == index3
        diagonal2 << item
      end
      index3 -= 1
    end
  end
  p diagonal1
  p diagonal2
  return (diagonal1.reduce(:+) - diagonal2.reduce(:+)).abs()
end

def plusMinus(arr)
  puts arr.select { |x| x > 0 }.count / arr.size.to_f
  puts arr.select { |y| y < 0 }.count / arr.size.to_f
  puts arr.select { |z| z == 0 }.count / arr.size.to_f
end

def staircase(n)
  # index = 0
  # while index < n
  #   pound = index + 1
  #   spaces = n - pound
  #   puts (" " * spaces) + ("#" * pound)
  #   index += 1
  # end
  # n.times do |i|
  #   puts " " * (n - (i + 1)) + "#" * (i + 1)
  # end
  n.times { |i| puts " " * (n - (i + 1)) + "#" * (i + 1) }
end

def miniMaxSum(arr)
end
