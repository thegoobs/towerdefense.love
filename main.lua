--[[
Tower Defense game by Guthrie Schoolar & Eli Schoolar
Inspiration by Bri Tamasi
Simple tower defense game to get used to Lua and LOVE2D
]]--

require "gamestate"
require "turret"
require "nav"

function love.load()
	game = newGame()
end

function love.update()

	--escape is the ultimate window kill
	if love.keyboard.isDown("escape") then love.event.quit() end
end

function love.draw()
	drawNav()
end