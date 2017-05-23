function newGrid()
	local object = {}

	for i = 1, 10 do
		object[i] = {}
		for j = 1, 10 do
			object[i][j] = 0
		end
	end

	object.active = false
	--file open and put into grid

	local file = io.open("map.txt", "r")
	local ctr = 1
	for l in file:lines() do
		for i = 1, 10 do
			local c = string.sub(l, i, i)
			object[ctr][i] = c
		end
		ctr = ctr + 1
	end

	function object:draw()
		love.graphics.setColor(255, 255, 255, 255 / 2)
		for i = 1, 10 do
			for j = 1, 10 do
				if object.hover(i, j) then
					love.graphics.setColor(255, 0, 255, 255 / 2)
				end
				if object[i][j] == '1' then
					love.graphics.setColor(0, 255, 255, 255 / 2)
				end
				love.graphics.rectangle("fill", 50 * i, 25 + 50 * j, 45, 45)
				love.graphics.setColor(255,255,255,255 / 2)
			end
		end
	end

	function object.hover(x, y)
		local mx = love.mouse.getX()
		local my = love.mouse.getY()
		if mx > 50 * x and mx < 50 + 50 * x and
		   my > 25 + 50 * y and my < 75 + 50 * y and
		   object.active == true then
		   	return true
		end
		return false
	end

	return object
end