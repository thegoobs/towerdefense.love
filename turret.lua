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

		active = false
	}

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
	return turret
end