local menu = require("menu")
local button = require("button")

function love.load()

	menu.load() -- First load the menu

end

function love.update(dt)

	menu.update(dt)

end

function love.draw()

	button.new(100,100,200,100,"Ahoj Evi dis working now 2131651641616")


end