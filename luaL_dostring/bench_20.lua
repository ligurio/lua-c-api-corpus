-- Public Domain, 2020
-- Source: https://gitspartv.github.io/LuaJIT-Benchmarks/

local function funcmret()
    return 1, 2
end

local select = select

local _, arg2 = funcmret()
return arg2

local arg2 = select(2, funcmret())
return arg2
