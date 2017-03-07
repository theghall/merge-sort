#merge-sort.rb
#
#20170307	 GH
#
require 'byebug'

def merge_sort(ary)

  if ary.length > 1
    mid = (ary.length / 2) - 1

    merge_sort(ary[0..mid])
    merge_sort(ary[mid + 1..-1])

    merge_ary = merge(ary[0..mid], ary[mid + 1..-1])
  end
  merge_ary
end

def merge(b, c)
  merge_ary = []

  puts("b: #{b}")
  puts("c: #{c}")
  while !b.empty? && !c.empty?
      b_val = b.shift
      c_val = c.shift
      if b_val < c_val
        merge_ary << b_val << c_val
      else
        merge_ary << c_val << b_val
      end
  end

  p merge_ary
  merge_ary
end

p merge_sort([8,5,3])
#p merge_sort([8,5,3,1,9,7])
