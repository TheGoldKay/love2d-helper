local helper = {}

--[[
Personal helper module crafted with love2d game development in mind
]]

function helper:rgb(r, g, b)
    -- convert from rbg (0 - 255) to love2d (0 - 1)
    if type(r) == 'table' then 
        r, g, b = unpack(r)
    end 
    return {r / 255, g / 255, b / 255}
end

return helper
