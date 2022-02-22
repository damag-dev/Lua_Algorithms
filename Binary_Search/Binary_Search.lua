------ Binary Search Alghoritm
local nums = {1,2,4,6,8,9,11,12,15,17,18,19,21,22}

Binary_Search = function(find)
    local first = 0
    local last = #nums
    while first <= last do
        mid = math.floor((first + last) / 2)
        local data = nums[mid]
        if data < find then
            first = mid + 1
        elseif data > find then
            last = mid -1
        else
            return 'Found on index: '..mid
        end
    end
    print("Data to find is not in table")
end

print(Binary_Search(12))