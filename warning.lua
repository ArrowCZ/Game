
local Warning = {}

local Textfont = love.graphics.newFont("fonts/bebasneueregular.ttf", 60)
local textbutton = require("textbutton")

	function Warning.new(text,action)
		
		local 	WindowWidth = love.graphics.getWidth()
		local 	WindowHeight = love.graphics.getHeight()
			
			
		love.graphics.setFont(Textfont)
		
		
		Warning.Draw(text)
	
	end
	
	function Warning.Draw(text)
	
	love.graphics.setColor( 0,0,0 )
	love.graphics.rectangle( "fill", WindowWidth / 2 - (WindowWidth / 4) / 2, WindowHeight / 2 - (WindowHeight / 4) / 2, WindowWidth / 1.2, WindowHeight / 1.2 )
	love.graphics.print("Warning", WindowWidth / 4 - (Textfont:getWidth( "Warning" ) / 2) ,WindowHeight / 6)
	
	end
	

return Warning