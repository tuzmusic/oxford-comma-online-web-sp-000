require 'pry'

def oxford_comma(array)
  str = ""
  return array.first if array.size == 1
  array.each do |item|
    str << " and" if item == array.last
    str << " #{item}"
    str << "," if array.size > 2 && item != array.last
  end
  str
end

# oxford_comma(["this", "that", "other"])
