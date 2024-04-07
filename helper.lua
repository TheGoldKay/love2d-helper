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

function helper:hex(hex_code)
    -- Remove the "#" symbol if present
    hex_code = hex_code:gsub("#", "")
    
    -- Convert the hex code to RGB
    local r = tonumber(hex_code:sub(1, 2), 16)
    local g = tonumber(hex_code:sub(3, 4), 16)
    local b = tonumber(hex_code:sub(5, 6), 16)
    
    return self:rgb(r, g, b)
end

function helper:colors()
    return {
        phthalo_green = self:hex("#123524"),
    }
    
end

return helper
