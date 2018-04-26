def remove_dups(array)
  uniq_array = []
  array.each do |el|
    uniq_array << el unless uniq_array.include?(el)
  end
  uniq_array
end

def two_sum(array)
  indices = []
  (0...array.length - 1).each do |idx|
    ((idx + 1)...array.length).each  do |idx2|
      indices << [idx, idx2] if array[idx] + array[idx2] == 0
    end
  end
    indices
end

def my_transpose(array)
  transpose = []
  array[0].each_index do |idx|
    cols = []
    array.each do |row|
      cols << row[idx]
    end
    transpose << cols
  end
  transpose
end

def stock_picker(prices)
  largest = 0
  largest_pair = nil
  l = prices.length
  (0...(l-1)).each do |i|
    ((i+1)...l).each do |j|
      if prices[j] - prices[i] > largest
        largest = prices[j] - prices[i]
        largest_pair = [i,j]
      end
    end
  end
  largest_pair
end
