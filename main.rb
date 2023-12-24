def merg_sort(array)
    if array.length <= 1
      return array
    end
    mid = array.length / 2
    left = merg_sort(array[0..mid-1])
    right = merg_sort(array[mid..array.length])
    merg(left, right)
  end  
  
  def merg(left, right)
    if left.empty?
      return right
    elsif right.empty?
      return left
    elsif left.first < right.first
      [left.first] + merg(left[1..left.length], right)
    else
      [right.first] + merg(left, right[1..right.length])
    end
  end  
  