-- 数组
arr = {1, 2, 3, 4, 5, "hello"}

-- lua数组索引从1开始
for key, var in pairs(arr) do
	print(key, var)
end

-- 数组常用方法

arr1 = {}

for var = 1, 100 do
	table.insert(arr1, 1, var) --(arr, pos, var)
end

for key, var in pairs(arr1) do
	print(key, var)
end

-- 数组最大索引值
print(table.maxn(arr1))
