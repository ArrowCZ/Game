local Menu = {}
local Bigfont = love.graphics.newFont("fonts/bebasneueregular.ttf", 140 / 1280 * love.graphics.getWidth())
local Mediumfont = love.graphics.newFont("fonts/bebasneueregular.ttf", 60)
local Smallfont = love.graphics.newFont("fonts/bebasneueregular.ttf", 20)

local 	WindowWidth = love.graphics.getWidth()
local 	WindowHeight = love.graphics.getHeight( )

local button = require("button")
local textbutton1 = require("textbutton")
local textbutton2 = require("textbutton")



function Menu.load()

--Display the menu first when the game is launched

gamestate = "menu"


end

function Menu.update(dt)

	
end

function Menu.draw()
	love.graphics.setFont(Bigfont)
	love.graphics.print("THE GAME",WindowWidth / 2 - (Bigfont:getWidth( "THE GAME" ) / 2) ,WindowHeight / 6)
	
	
		textbutton1.new(WindowWidth / 2 - Mediumfont:getWidth("New Game") / 2,WindowHeight / 2.8,"New Game","ffffff","888888",newgame)
		textbutton2.new(WindowWidth / 2 - Mediumfont:getWidth("Continue") / 2,WindowHeight / 2.2,"Continue","ffffff","888888",continue)
		


end

function Menu.mousepressed(x,y,button)

	--Buttons[1].mousepressed(x,y,button)
	if textbutton1.IsHover(WindowWidth / 2 - Mediumfont:getWidth("New Game") / 2,WindowHeight / 2.8,"New Game") then
		print("button1")
	end
	if textbutton2.IsHover(WindowWidth / 2 - Mediumfont:getWidth("Continue") / 2,WindowHeight / 2.2,"Continue") then
		print("button2")
	end


end


function newgame()

print("newgame")

end

function continue()

print("continue")

end


return Menu
