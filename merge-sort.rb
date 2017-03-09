# merge-sort.rb
#
# 20170307	 GH
#

def merge_sort(ary)
  return ary if ary.length == 1

  # -1 to prevent stack overflow since lengths 2 & 3 will give same mid
  # point over and over
  mid = ary.length / 2 - 1

  left = ary[0..mid]

  right = ary[mid + 1..-1]

  left = merge_sort(left)

  right = merge_sort(right)

  merge(left, right)
end

def merge(b, c)
  merge_ary = []

  while !b.empty? && !c.empty?
    merge_ary << (b.first < c.first ? b.shift : c.shift)
  end

  merge_ary + (b.empty? ? c : b)
end

puts("Let's rock the merge sort!")
[[8, 5], [8, 5, 3], [8, 5, 3, 9, 1, 7]].each do |ary|
  puts("#{ary}")

  merge_ary = merge_sort(ary)

  puts("=> #{merge_ary}\n\n")
end
