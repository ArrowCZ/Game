local Settings = {}
local Bigfont = love.graphics.newFont("fonts/bebasneueregular.ttf", 100 / 1280 * love.graphics.getWidth())
local Mediumfont = love.graphics.newFont("fonts/bebasneueregular.ttf", 60)
local Smallfont = love.graphics.newFont("fonts/bebasneueregular.ttf", 20)



local button = require("button")
local warning = require("warning")
local textbutton = require("textbutton")

local mousex, mousey



function Settings.load()


	gamestate = "settings"
	background = love.graphics.newImage("images/background.jpg")
	mousex = 0
	mousey = 0

	local 	WindowWidth = love.graphics.getWidth()
	local 	WindowHeight = love.graphics.getHeight( )

end

function Settings.update(dt)

	mousex, mousey = love.mouse.getPosition()
	
end

function Settings.draw()

	--**BACKGROUND**--
		love.graphics.draw(background, -20 + mousex / 100,-20 + mousey / 100)
	 --**BACKGROUND**--
	 
	 
	 love.graphics.setColor( 0,0,0,0.5 )
	 love.graphics.rectangle( "fill", WindowWidth / 2 - (WindowWidth / 1.2) / 2, WindowHeight / 2 - (WindowHeight / 1.2) / 2, WindowWidth / 1.2, WindowHeight / 1.2 )
	 
	 --FPS
	love.graphics.setNewFont(12)
	love.graphics.setColor(1,1,1)
		love.graphics.print("Current FPS: "..tostring(love.timer.getFPS( )), 10, 10)
	--FPS
	

	love.graphics.setFont(Bigfont)
	love.graphics.print("SETTINGS",WindowWidth / 4 - (Bigfont:getWidth( "SETTINGS" ) / 2) ,WindowHeight / 8)
		
			if love.filesystem.read("fullscreen.txt") == "true" then
				textbutton.new(WindowWidth / 4 - Mediumfont:getWidth("Disable Fullscreen") / 2,WindowHeight / 2.8,"Disable Fullscreen","ffffff","888888",fullscreen,"enable")
				else textbutton.new(WindowWidth / 4 - Mediumfont:getWidth("Enable Fullscreen") / 2,WindowHeight / 2.8,"Enable Fullscreen","ffffff","888888",fullscreen,"enable")
			end
end


function fullscreen()

	--write the requested changes to a file, so that we can apply that once we restart the client.
	
	if love.filesystem.read("fullscreen.txt") == "true" then
	
	 succes,message = love.filesystem.write( "fullscreen.txt", "false" )
	 else   succes,message =love.filesystem.write( "fullscreen.txt", "true" )
			
	 end
	print(success, message)
	

end


return Settings
