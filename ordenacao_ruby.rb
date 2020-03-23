def alphabetize(arr, rev=false)
  if rev 
    return arr.sort! {|a, b| b <=> a}
  else
    return arr.sort! {|a, b| a <=> b}
  end
end

numbers = [5, 1, 3, 8]
puts alphabetize(numbers)
puts alphabetize(numbers, true)