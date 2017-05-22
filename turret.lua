--object for turrets
function newTurret()
	local turret = {
		position = { --position holds the top left corner coordinates
			x = 0,
			y = 0
		},
		image = nil,
		color = {
			r = 0,
			g = 0,
			b = 0,
			a = 255
		},

		name = "test",
		cost = 0,

		active = false,
		selected = false
	}

	function turret:set(name, cost)
		turret.name = name
		turret.cost = cost
	end

	function turret:hover()
		local mx = love.mouse.getX()
		local my = love.mouse.getY()

		if mx > turret.position.x and mx < turret.position.x + 50 and
		   my > turret.position.y and my < turret.position.y + 50 and
		   not turret.active then
		   return true
		end

		return false
	end

	function turret:select()
		local mx = love.mouse.getX()
		local my = love.mouse.getY()

		if love.mouse.isDown("l") then

		end
	end
	return turret
end