require 'pry'

def oxford_comma(array)
  return array.first if array.size == 1
  puts "after shift, array has #{array.size} items"
  str = array.shift
  puts "before loop, array has #{array.size} items"
  binding.pry
  array.each do |item|
    str << " and" if item == array.last
    str << " #{item}"   # this messes up first item each time
    str << "," if item != array.last
  end
  str
end

# oxford_comma(["this", "that", "other"])
