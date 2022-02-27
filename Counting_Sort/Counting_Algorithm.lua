local nums = {1,4,1,2,7,5,22,2,-5}

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

Count_Algorithm(nums)