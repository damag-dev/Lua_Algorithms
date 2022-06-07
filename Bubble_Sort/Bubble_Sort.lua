local table_d = {2,5,0,3,4,5,7,6}

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

Bubble_Sort(table_d)
