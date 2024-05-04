--[[--
Helpers methods for some common memory reads
--]]--

return {
    ---Read a 1-byte (8-bit) value from memory
    ---@param addr integer the memory address to read from
    ---@return any value the value read from memory
    read8 = function(addr)
        local val = flycast.memory.read8(addr)
        return val
    end;

    ---Read a 4-byte (32-bit) value from memory
    ---@param addr integer the memory address to read from
    ---@return any value the value read from memory
    read32 = function(addr)
        local val = flycast.memory.read32(addr)
        return val
    end;

    ---Read a 8-byte (64-bit) value from memory
    ---@param addr integer the memory address to read from
    ---@return any value the value read from memory
    read64 = function(addr)
        local val = flycast.memory.read64(addr)
        return val
    end;

    ---Read a 4-byte (32-bit) floating point value from memory
    ---@param addr integer the memory address to read from
    ---@return number value the value read from memory
    readFloat32 = function(addr)
        local bs = flycast.memory.read32(addr)
        local ss = string.pack("i4",bs)
        local ff = string.unpack("f",ss)
        return ff
    end;
}
