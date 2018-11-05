local menu = require("menu")
local button = require("button")

function love.load()

	menu.load() -- First load the menu

end

function love.update(dt)

	menu.update(dt)

end

function love.draw()

	button.new(100,100,200,100,"Klikni pro pozdrav!","ffffff","000000","222222",pozdrav)
	--FPS
	love.graphics.setNewFont(12)
	love.graphics.setColor(1,1,1)
		love.graphics.print("Current FPS: "..tostring(love.timer.getFPS( )), 10, 10)
	--FPS

end

function pozdrav()

	print(font:getHeight())

end