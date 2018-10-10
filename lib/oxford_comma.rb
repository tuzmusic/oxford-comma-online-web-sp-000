require 'pry'

def oxford_comma(array)
  return array.first if array.size == 1
  str = array.shift
  array.each do |item|
    str << "," if array.size > 1
    str << " and" if item == array.last
    str << " #{item}"
  end
  str
end
