-- Public Domain, 2020
-- Source: https://gitspartv.github.io/LuaJIT-Benchmarks/

local a = {}

for i = 1, 100 do
	a[i] = i
end

a.n = 100
a[0] = 100
local length = #a
local nxt = next

function jit_pairs(t)
	return nxt, t
end

for k, v in pairs(a) do
	local x = v
end

for k, v in jit_pairs(a) do
	local x = v
end

for k, v in ipairs(a) do
	local x = v
end

for i = 1, 100 do
	local x = a[i]
end

for i = 1, #a do
	local x = a[i]
end

for i = 1, length do
	local x = a[i]
end

for i = 1, a.n do
	local x = a[i]
end

for i = 1, a[0] do
	local x = a[i]
end
