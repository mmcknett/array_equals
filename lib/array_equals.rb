# Determines if the two input arrays have the same count of elements
# and the same integer values in the same exact order
def array_equals(array1, array2)
  bothNil = array1.nil? && array2.nil?
  return true if bothNil

  onlyOneNil = !bothNil && (array1.nil? || array2.nil?)
  return false if onlyOneNil || array1.length != array2.length

  i = 0
  while i < array1.length
    return false if array1[i] != array2[i]
    i += 1
  end

  return true
end
