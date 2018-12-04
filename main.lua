

local menu = require("menu")
local sett = require("settings")
local button = require("button")
local textbutton = require("textbutton")
local saveData = require("saveData")


function love.load()

	--Initialize settings
	if love.filesystem.load("settings") == nil then
		else
		
		 local isfus = saveData.load("settings")
		 if isfus.fullscreen == true then love.window.setFullscreen(true, "desktop")
			else  love.window.setFullscreen(false, "desktop")
		 end
		
	 end
	 --Initialize settings

	gamestate = "menu"
	menu.load() -- First load the menu
	
	WindowWidth = love.graphics.getWidth( )
	WindowHeight = love.graphics.getHeight( )

end

function love.update(dt)

	if gamestate == "menu" then
	
		menu.update(dt)
		
	end
	if gamestate == "settings" then
	
		sett.update(dt)
		
	end


end

function love.draw()

	--button.new(100,100,200,200,"Klikni pro pozdrav!","ffffff","000000","222222",pozdrav)
	--textbutton.new(600,600,"TEST","ffffff","888888",pozdrav)
	--FPS
	love.graphics.setNewFont(12)
	love.graphics.setColor(1,1,1)
		love.graphics.print("Current FPS: "..tostring(love.timer.getFPS( )), 10, 10)
	--FPS
	
	--First drawing the menu.
	
	if gamestate == "menu" then
	
		menu.draw()	
		
	end
	if gamestate == "settings" then
	
		sett.draw()	
		
	end
	
end

function pozdrav()

	print("Ahojky")

end
