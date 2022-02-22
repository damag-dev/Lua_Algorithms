------ Binary Search Alghoritm
local nums = {}
for i=1,100000 do
    nums[#nums+1] = i
end

Binary_Search = function(find)
    local first = 0
    local last = #nums
    local steps = 0
    while first <= last do
        steps = steps + 1
        mid = math.floor((first + last) / 2)
        local data = nums[mid]
        if data < find then
            first = mid + 1
        elseif data > find then
            last = mid -1
        else
            return 'Found on index: '..mid..'\nSteps required: '..steps..'\nHow many times faster: '..math.floor(find/steps)
        end
    end
    print("Data to find is not in table")
end

print("Type number to find from 1 to 100000")
local check = io.read()
print(Binary_Search(tonumber(check)))