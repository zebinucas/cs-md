-- lua 面向对象

People = {}
-- People.sayHi = function()
--	print("People say hi")
-- end

function People.sayHi(self)
	-- .. 用于字符串链接
	print("People say hi:"..self.name)
end


-- Clone
function clone(tab)
	local ins = {}
	for key, var in pairs(tab) do
		ins[key] = var
	end
	return ins
end

-- Copy
function copy(dist, tab)
	for key, var in pairs(tab) do
		dist[key] = var
	end
end

-- local p = clone(People)
-- p.sayHi()

-- 构造方法
People.new = function(name)
	local self = clone(People)
	self.name = name
	return self
end

local p = People.new("zebin")
-- p.sayHi(p)
-- 等价于
-- : 默认将实例作为第一个参数传给方法
p:sayHi()

-- 继承
Man = {}
Man.new = function (name)
	local self = People.new(name)
	copy(self, Man)		
	return self
end

Man.sayHello = function()
	print("Man say hello")
end

-- 重写方法
Man.sayHi = function(self)
	print("Man say hi:"..self.name)
end
local m = Man.new("zebin")
m:sayHello()
m:sayHi()
