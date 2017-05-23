--[[
Tower Defense game by Guthrie Schoolar & Eli Schoolar
Inspiration by Bri Tamasi
Simple tower defense game to get used to Lua and LOVE2D
]]--

require "gamestate"
require "turret"
require "nav"
require "grid"

function love.load()
	game = newGame()
	grid = newGrid()
	love.graphics.setNewFont("Lato-Regular.ttf", 15)
end

function love.update()
	--escape is the ultimate window kill
	if love.keyboard.isDown("escape") then love.event.quit() end
end

function love.draw()
	drawNav()
end

function love.mousepressed(x, y, button, istouch)
	if button == 1 then

		--check for HUD turret selection
		for i = 1, 3 do
			for j = 1, 3 do
				if game.turrets[i][j].hover() then
					game.selected = {i, j}
					return
				end
			end
		end

		game.selected = {0,0}
		--check for deployed turret selection
	end
end