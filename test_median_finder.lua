-- median1 = function(a)
--   table.sort(a)
--   if #a % 2 == 0 then
--     return (a[#a // 2 + 1] + a[#a // 2]) / 2
--   else
--     return a[#a // 2 + 1]
--   end
-- end

-- median2 = function(a)
--   local l = 1
--   local r = #a
--   local lo, am
--   while l < r do
--     lo = l - 1
--     am = a[r]
--     for i = l, r - 1 do
--       if a[i] < am then
--         lo = lo + 1
--         a[lo], a[i] = a[i], a[lo]
--       end
--     end
--     lo = lo + 1
--     a[lo], a[r] = a[r], a[lo]
--     if #a // 2 + 1 <= lo then
--       r = lo - 1
--     else
--       l = lo + 1
--     end
--   end
--   if #a % 2 == 0 then
--     return (a[#a // 2 + 1] + a[#a // 2]) / 2
--   else
--     return a[#a // 2 + 1]
--   end
-- end

-- input = function()
--   t = {}
--   for i = 1, 25 do table.insert(t, math.random(0, 1000)) end
--   return t
-- end
-- local s1 = 0
-- local s2 = 0
-- for i = 1, 100 do
--   math.randomseed(i)
--   t = input()
--   start = os.clock()
--   t1 = median1(t)
--   s1 = s1 + (os.clock() - start)
--   math.randomseed(i)
--   t = input()
--   start = os.clock()
--   t2 = median2(t)
--   s2 = s2 + (os.clock() - start)
--   assert(t1 == t2)
-- end
-- print(s1, s2)