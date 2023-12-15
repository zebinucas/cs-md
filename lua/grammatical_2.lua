-- 循环
for var=1, 100 do
	print(var)
end

-- 表table 
-- {} 表示创建一个表
Config = { hello = "hello", world = "world" }
-- 添加键值
Config.words = "words"
Config.number = 100
Config["name"] = "zebin"
-- get元素
print(Config.words)
print(Config["number"])

-- 遍历表
for key, var in pairs(Config) do
	print(key, var)
end
