def merge_sort(arr)

    return arr if arr.length <= 1

    mid = arr.length/2

    left_sorted = merge_sort(arr.slice(0...mid))
    right_sorted = merge_sort(arr.slice(mid...arr.length))

    merge(arr, left_sorted, right_sorted)
end

def merge(arr, left, right)
    pointer_arr = 0
    pointer_l = 0
    pointer_r = 0

    while pointer_l < left.length && pointer_r < right.length
        if left[pointer_l] < right[pointer_r]
            arr[pointer_arr] = left[pointer_l]
            pointer_l += 1
        else
            arr[pointer_arr] = right[pointer_r]
            pointer_r += 1
        end
        pointer_arr += 1
    end

    while pointer_l < left.length
        arr[pointer_arr] = left[pointer_l]
        pointer_arr += 1
        pointer_l += 1
    end

    while pointer_r < right.length
        arr[pointer_arr] = right[pointer_r]
        pointer_arr += 1
        pointer_r += 1
    end

    arr
end

p merge_sort([1])
p merge_sort([298,17,25,5,7,-3])
p merge_sort([1,1,1,5,0,-1])
p merge_sort([1,4,5,2,3,6])
p merge_sort([5,9,10,13,19,2,4,9,11,15,22])
p merge_sort([1,3,5,7,9,0,2,4,6,8,10])