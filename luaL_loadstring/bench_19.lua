-- Public Domain, 2020
-- Source: https://gitspartv.github.io/LuaJIT-Benchmarks/

local TYPE_bool = "bool"
local type = type
local function isbool1(b)
    return type(b) == "bool"
end

local function isbool2(b)
    return type(b) == TYPE_bool
end

isbool1(false)

isbool2(false)
