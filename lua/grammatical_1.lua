-- 注释 --

-- lua全局变量

num = 100

-- lua局部变量

local num1 = 101

-- lua方法

function sayHello()
	print("hello lua")
end

sayHello()

-- lua传入参数 返回值
function max(a, b)
	if a > b then
		return a
	else
		return b
	end
end

print(max(2, 3))
