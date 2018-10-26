local menu = require("menu")
local button = require("button")

function love.load()

	menu.load() -- First load the menu

end

function love.update(dt)

	menu.update(dt)

end

function love.draw()

	button.newOpaque(100,100,200,100,"Klikni pro pozdrav!","ffffff","000000","222222",pozdrav,"Pozdrav")
	button.newClear(100,300,200,100,"TEST!","222222",test,"Testovani")
	--FPS
	love.graphics.setNewFont(12)
	love.graphics.setColor(1,1,1)
		love.graphics.print("Current FPS: "..tostring(love.timer.getFPS( )), 10, 10)
	--FPS

end

function pozdrav()

	print("helllloo")

end
function test()

	print("testingtesting 123")
	
end