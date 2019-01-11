local Game = {}
local Bigfont = love.graphics.newFont("fonts/bebasneueregular.ttf", 140 / 1280 * love.graphics.getWidth())
local Mediumfont = love.graphics.newFont("fonts/bebasneueregular.ttf", 60)
local Smallfont = love.graphics.newFont("fonts/bebasneueregular.ttf", 20)


local button = require("button")

local sett = require("settings")
local animation = require("animation")


local mousex, mousey



function Game.load()

	gamestate = "game"
	player_animation = animation.new(love.graphics.newImage("images/volt_run.png"), 163, 211,0.5)


end

function Game.update(dt)

	mousex, mousey = love.mouse.getPosition()
	animation.update(dt)
	
end

function Game.draw()

	--**BACKGROUND**--
		
	 --**BACKGROUND**--
	animation.draw()
	

		


end



function settings()

	gamestate = "settings"
	sett.load()

end


return Game
