
function drawNav()
	--draw top bar
	love.graphics.rectangle("line", 0, 0, game.screen.w, 50)
	love.graphics.print("Round: " .. game.round, 30, 15)
	love.graphics.print("Cash: " .. game.money, game.screen.w - 100, 15)

	--draw turret info section
	love.graphics.rectangle("line", 600, 50, 200, game.screen.h - 50)

	--draw selected turret title block
	love.graphics.rectangle("line", 625, 62.5, 150, 50)

	for i = 1, 3 do
		for j = 1, 3 do
			if game.selected[1] == i and game.selected[2] == j then
				game.turrets[i][j].color.a = 255 / 2
			else
				game.turrets[i][j].color.a = 255
			end
			love.graphics.setColor(game.turrets[i][j].color.r, game.turrets[i][j].color.g, game.turrets[i][j].color.b, game.turrets[i][j].color.a)
			game.turrets[i][j].position.x = 575 + 50 * i
			game.turrets[i][j].position.y = 75 + 50 * j
			love.graphics.rectangle("fill", 575 + 50 * i, 75 + 50 * j, 45, 45)

			--check if turret is hovered
			if game.turrets[i][j].hover() then
				love.graphics.setColor(255, 255, 255)
				love.graphics.print(game.turrets[i][j].name, 650, 65)
				love.graphics.print("cost: " .. game.turrets[i][j].cost, 650, 85)
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

	--draw grid for turrets on map
	if game.selected[1] > 0 and game.selected[2] > 0 then
		love.graphics.setColor(255, 255, 255, 255 / 2)
		for i = 1, 10 do
			for j = 1, 10 do
				love.graphics.rectangle("fill", 50 * i, 25 + 50 * j, 45, 45)
			end
		end
		love.graphics.setColor(255,255,255,255)
	end

	love.graphics.print(game.selected[1] .. game.selected[2], 0,0)
end --drawNav()