
--game object that holds all pertinent game info
function newGame()
	local object = {
		state = 0,
		turrets = {},
		screen = {
			w = love.graphics.getWidth(),
			h = love.graphics.getHeight()
		}	
	}

	for i = 1, 3 do
		object.turrets[i] = {} --make new row
		for j = 1, 3 do
			object.turrets[i][j] = newTurret()
			--arbitrary colors for dev purposes
			object.turrets[i][j].color.r = 255 / i
			object.turrets[i][j].color.g = 255 / j
			object.turrets[i][j].color.b = 255 * j / i
		end
	end
	return object
end