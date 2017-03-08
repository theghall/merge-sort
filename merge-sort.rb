#merge-sort.rb
#
#20170307	 GH
#
require 'byebug'

def merge_sort(ary)
  if ary.length > 1
    mid = ary.length / 2 - 1

    merge_sort(ary[0..mid])

    merge_sort(ary[mid + 1..-1])

    p merge(ary[0..mid], ary[mid + 1..-1])
  end
  ary
end

def merge(b, c)
  merge_ary = []

  puts("b: #{b}")
  puts("c: #{c}")
  while !b.empty? && !c.empty?
      b_val = b.first

      c_val = c.first

      if b_val < c_val
        merge_ary << b.shift
      else
        merge_ary << c.shift
      end
  end

  if b.empty?
    merge_ary += c
  else
    merge_ary += b
  end

  merge_ary
end

ary1 = [5,8,3]
puts("#{ary1}")
p merge_sort(ary1)
puts("------------")
ary2 = [8,5,3,1,9,1]
puts("#{ary2}")
p merge_sort(ary2)
