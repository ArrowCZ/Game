

local menu = require("menu")
local sett = require("settings")
local button = require("button")
local textbutton = require("textbutton")
local saveData = require("saveData")
local game = require("game")

local time_update = 0

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

	time_update =time_update + 1
		if (time_update == 1000) then  
			print("Memory used: "..collectgarbage('count').." kb")
			print(love.timer.getFPS( ).." FPS")
			local stats = love.graphics.getStats()
			print("Estimated amount of texture memory used (MB): "..stats.texturememory /1024 /1024)
			
			print("Number of loaded images: "..stats.images)
			print("Number of loaded fonts: "..stats.fonts)
			time_update = 0
		end


	if gamestate == "menu" then
	
		menu.update(dt)
	
		
		elseif gamestate == "settings" then sett.update(dt)
		elseif gamestate == "game" then game.update(dt) 
	
		
	
		
	end


end

function love.draw()

	--button.new(100,100,200,200,"Klikni pro pozdrav!","ffffff","000000","222222",pozdrav)
	--textbutton.new(600,600,"TEST","ffffff","888888",pozdrav)

	--First drawing the menu.
	if gamestate == "menu" then
	
		menu.draw()
		
		elseif gamestate == "settings" then sett.draw()
		elseif gamestate == "game" then game.draw() 
	
		
	
		
	end
	--FPS
	local stats = love.graphics.getStats()
	love.graphics.setNewFont(12)
	love.graphics.setColor(1,1,1)
		love.graphics.print("Current FPS: "..tostring(love.timer.getFPS( )), 10, 10)
		love.graphics.print("Amount of drawcalls: "..tostring(stats.drawcalls), 10, 40)
		
	--FPS
	
	
end

function pozdrav()

	print("Ahojky")

end
