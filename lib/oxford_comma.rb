require 'pry'

def oxford_comma(array)
  str = array.shift
  return str if array.size == 1
  array.each do |item|
    str << " and" if item == array.last
    str << " #{item}"
    str << "," if array.size > 1 && item != array.last
  end
  str
end

# oxford_comma(["this", "that", "other"])
