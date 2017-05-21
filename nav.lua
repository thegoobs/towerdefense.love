
function drawNav()
	love.graphics.rectangle("line", 0, 0, game.screen.w, 50)
	love.graphics.rectangle("line", 600, 50, 200, game.screen.h - 50)

	--draw selected turret title block
	love.graphics.rectangle("line", 625, 62.5, 150, 50)
	--draw grid of turrets
	for i = 1, 3 do
		for j = 1, 3 do
			love.graphics.setColor(game.turrets[i][j].color.r, game.turrets[i][j].color.g, game.turrets[i][j].color.b, game.turrets[i][j].color.a)
			game.turrets[i][j].position.x = 575 + 50 * i
			game.turrets[i][j].position.y = 75 + 50 * j
			love.graphics.rectangle("fill", 575 + 50 * i, 75 + 50 * j, 45, 45)

			--check if turret is hovered
			if game.turrets[i][j].hover() then
				love.graphics.setColor(255, 255, 255)
				love.graphics.print("Turret", 650, 75)
				love.graphics.print(i, 700, 75)
				love.graphics.print(j, 725, 75)
			end
		end
	end

	--reset color
	love.graphics.setColor(255,255,255)

	--draw turret selected stat window
	love.graphics.rectangle("line", 625, 300, 150, 225)

	--draw button row
	for i = 0, 2 do
		love.graphics.rectangle("line", 625 + 50 * i, game.screen.h - 50, 50, 25)
	end
end --drawNav()