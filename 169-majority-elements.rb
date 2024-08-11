## 169 - Majority Elements
# [2,2,1,1,1,2,2]
def majority_element(nums)
  count, res = 0,0
  nums.each do |i|
    if res == 0
      count, res = 1, i
    elsif res == i
      count += 1
    else
      count -= 1
      res = i
    end
  end
end


def majority_element(nums)
  count_array = {}
  majority_number = 0
  majority_number_count = 0

  nums.each do |i|
    if count_array.has_key?(i)
      count_array[i] = count_array[i] + 1
    else
      count_array[i] = 1
    end
    if count_array[i] > majority_number_count
      majority_number = i
      majority_number_count = count_array[i]
    end
  end
  return majority_number
end