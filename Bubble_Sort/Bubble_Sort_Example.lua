local table_d = {}

function Bubble_Sort(list)
    local n = #list
    while n > 1 do
        local list_done = false
        for i=1,#list do
            if list[i+1] then
                if list[i] > list[i+1] then
                    list[i] , list[i+1] = list[i+1] , list[i]
                    list_done = true
                end
            end
        end
        n = n - 1
        if not list_done then
            break    
        end
    end
    return list
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
        table_d[#table_d + 1] = asked
    else
        print('Write down only numbers')
    end
end

local save_output = ""
local returned_data = Bubble_Sort(table_d)
for i=1 , #returned_data do
    save_output = save_output..returned_data[i]..' '
end
print(save_output)