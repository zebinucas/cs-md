-- 函数闭包方式实现面向对象

function People(name)
	local self = {}

	local function init()
		self.name = name
	end
	
	self.sayHi = function()
		print("Hello "..self.name)
	end

	init()
	return self
end

local p = People("zebin")
p:sayHi()

-- 继承
function Man(name)
	local self = People(name)
	
	local function init()

	end
	self.sayHello = function()
		print("Hi "..self.name)
	end
	init()
	return self
end

local m = Man("lisi")
m:sayHello()
m:sayHi()
