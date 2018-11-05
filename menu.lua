local Menu = {}
local Bigfont = love.graphics.newFont("fonts/bebasneueregular.ttf", 140 / 1280 * love.graphics.getWidth())
local Mediumfont = love.graphics.newFont("fonts/bebasneueregular.ttf", 60)
local Smallfont = love.graphics.newFont("fonts/bebasneueregular.ttf", 20)

local 	WindowWidth = love.graphics.getWidth()
local 	WindowHeight = love.graphics.getHeight( )

local button = require("button")
local textbutton = require("textbutton")




function Menu.load()

--Display the menu first when the game is launched

gamestate = "menu"


end

function Menu.update(dt)

	
end

function Menu.draw()
	love.graphics.setFont(Bigfont)
	love.graphics.print("THE GAME",WindowWidth / 2 - (Bigfont:getWidth( "THE GAME" ) / 2) ,WindowHeight / 6)
	
	
		textbutton.new(WindowWidth / 2 - Mediumfont:getWidth("New Game") / 2,WindowHeight / 2.8,"New Game","ffffff","888888",newgame,"game")
		textbutton.new(WindowWidth / 2 - Mediumfont:getWidth("Continue") / 2,WindowHeight / 2.2,"Continue","ffffff","888888",continue,"next")
		


end


function newgame()

print("newgame")

end

function continue()

print("continue")

end


return Menu
