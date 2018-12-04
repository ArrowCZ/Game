local Settings = {}
local Bigfont = love.graphics.newFont("fonts/bebasneueregular.ttf", 100 / 1280 * love.graphics.getWidth())
local Mediumfont = love.graphics.newFont("fonts/bebasneueregular.ttf", 60)
local Smallfont = love.graphics.newFont("fonts/bebasneueregular.ttf", 20)



local button = require("button")
local warning = require("warning")
local textbutton = require("textbutton")
local saveData = require("saveData")


local mousex, mousey

local full_state

function Settings.load()
	
	save_values = {}
	if love.filesystem.load("settings") == nil then
	
		save_values.fullscreen = false 
		full_state = "OFF"
	else 
		local first_sett = saveData.load("settings")
		save_values.fullscreen = first_sett.fullscreen
	end

	
	if (save_values.fullscreen == false) then
		full_state = "OFF"
		else full_state = "ON"
	end
	
	
	

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

		textbutton.new(WindowWidth / 4 - Mediumfont:getWidth("Fullscreen: ON") / 2,WindowHeight / 2.8,"Fullscreen: ".. tostring(full_state) .. "","ffffff","888888",fullscreen,"enable")
		
end


function fullscreen()

	--write the requested changes to a file, so that we can apply that once we restart the client.
	
		
		save_values.fullscreen = not save_values.fullscreen
		
		if full_state == "OFF" then full_state = "ON" 
			else full_state = "OFF"
		end
	
		
		--saveData.save(save_values, "settings")
		--print(save_values.fullscreen)
		
		--Hodnoty budeme ukladat az tlacitkem "save settings", protoze se vzdy ukladanim hodnot prepise soubor settings. 
		
		
		--local t2 = saveData.load("settings")
		--print("NEW:".. tostring(t2.fullscreen).. "")
		--print(save_values.fullscreen, full_state)
	

end


return Settings
