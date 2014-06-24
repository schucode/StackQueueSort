

# merges ordered arrays a and b into a single ordered array c

def merge(a, b)
  n = 0
  c = []
  a_reader = 0
  b_reader = 0
  while a[a_reader] != nil || b[b_reader] != nil
    if a[a_reader] == nil
      c[n] = b[b_reader]
      b_reader += 1
    elsif b[b_reader] == nil
      c[n] = a[a_reader]
      a_reader += 1
    elsif a[a_reader] < b[b_reader]
      c[n] = a[a_reader]
      a_reader += 1
    elsif a[a_reader] >= b[b_reader]
      c[n] = b[b_reader]
      b_reader += 1
    end
    n += 1
  end
  return c
end


def sort_this(a)
  bucket = []
  temp_bucket = []

  a.each_index { |i| bucket[i] = [a[i]] }

  k = 0

  while k < 2 do
    temp_bucket[k] = merge(bucket[k], bucket[k+1])
    bucket = temp_bucket
    k += 2
  end

  return bucket
end

