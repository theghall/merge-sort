#merge-sort.rb
#
#20170307	 GH
#
require 'byebug'

def merge_sort(ary, merge_ary = [])
  if ary.length > 1
    # -1 to prevent stack overflow since lengths 2 & 3 will give same mid
    # point over and over
    mid = ary.length / 2 - 1

    left = ary[0..mid]
    right = ary[mid + 1..-1]

    merge_sort(left, merge_ary)

    merge_sort(right, merge_ary)

    merge_ary = merge(left, right)
  end
  merge_ary
end

def merge(b, c)
  merge_ary = []

  while !b.empty? && !c.empty?
      if b.first < c.first
        merge_ary << b.shift
      else
        merge_ary << c.shift
      end
  end

  merge_ary += (b.empty? ? c : b)

  merge_ary
end

ary1 = [8,5]
puts("#{ary1}=>")
p merge_sort(ary1)
puts("----------")
ary2 = [8,5,3]
puts("#{ary2}=>")
p merge_sort(ary2)
