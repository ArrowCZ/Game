local Menu = {}
local Bigfont = love.graphics.newFont("fonts/bebasneueregular.ttf", 140 / 1280 * love.graphics.getWidth())
local Mediumfont = love.graphics.newFont("fonts/bebasneueregular.ttf", 60)
local Smallfont = love.graphics.newFont("fonts/bebasneueregular.ttf", 20)


local button = require("button")
local textbutton = require("textbutton")
local sett = require("settings")
local game = require("game")

local mousex, mousey


function Menu.load()

	--Display the menu first when the game is launched

	gamestate = "menu"
	background = love.graphics.newImage("images/background.jpg")
	mousex = 0
	mousey = 0
	
	local 	WindowWidth = love.graphics.getWidth()
	local 	WindowHeight = love.graphics.getHeight( )



end

function Menu.update(dt)

	mousex, mousey = love.mouse.getPosition()
	
end

function Menu.draw()

	--**BACKGROUND**--
		love.graphics.draw(background, -20 + mousex / 100,-20 + mousey / 100)
	 --**BACKGROUND**--
	 --FPS
	love.graphics.setNewFont(12)
	love.graphics.setColor(1,1,1)
		love.graphics.print("Current FPS: "..tostring(love.timer.getFPS( )), 10, 10)
	--FPS
	

	love.graphics.setFont(Bigfont)
	love.graphics.print("THE GAME",WindowWidth / 2 - (Bigfont:getWidth( "THE GAME" ) / 2) ,WindowHeight / 6)
	
	
		textbutton.new(WindowWidth / 2 - Mediumfont:getWidth("New Game") / 2,WindowHeight / 2.8,"New Game","ffffff","888888",newgame,"game")
		textbutton.new(WindowWidth / 2 - Mediumfont:getWidth("Continue") / 2,WindowHeight / 2.2,"Continue","ffffff","888888",continue,"next")
		textbutton.new(WindowWidth / 2 - Mediumfont:getWidth("Settings") / 2,WindowHeight / 1.8,"Settings","ffffff","888888",settings,"settings")
		


end


function newgame()

	--**START A NEW GAME**--
	
		gamestate = "game" --Changing the main game loop gamestate
		print("New game started, save override")
		game.load()
	

end

function continue()

	print("continue")

end

function settings()

	gamestate = "settings"
	sett.load()

end


return Menu
