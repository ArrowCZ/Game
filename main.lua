local menu = require("menu")
local button = require("button")

function love.load()

	menu.load() -- First load the menu

end

function love.update(dt)

	menu.update(dt)

end

function love.draw()

	button.draw(100,100,50,50,"Ahoj")


end