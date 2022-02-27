local nums = {}

Count_Algorithm = function(sort)
    local min,max,output = nil,nil,{}
    for i=1,#sort do 
        if not min then min = sort[i] max = sort[i] end
        if min > sort[i] then min = sort[i] end
        if max < sort[i] then max = sort[i] end
    end
    local range = max - min + 1
    local count = {}
    for i=1 , range do count[i] = 0 end
    for i=1 , #sort do
        count[sort[i] - min + 1] = count[sort[i] - min + 1] + 1
    end
    for i=1,#count do
        while count[i] ~= 0 do
            output[#output + 1] = i + min -1
            count[i] = count[i] - 1 
        end
    end
    return output
end

print('Write down your numbers to sort')
print('To accept and start sorting type:\27[1;32m y \27[0m')
while true do
    local asked = io.read()
    if string.upper(asked) == 'Y' then
        break
    end
    asked = tonumber(asked)
    if asked then
        nums[#nums + 1] = asked
    else
        print('Write down only numbers')
    end
end

local save_output = ""
local returned_data = Count_Algorithm(nums)
for i=1 , #returned_data do
    save_output = save_output..returned_data[i]..' '
end
print(save_output)