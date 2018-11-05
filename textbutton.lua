
--Vykresli Button. Parametry:
-- X - X hodnota pozice
-- Y - Y hodnota pozice
-- W - sirka buttonu
-- H - vyska
-- text - text co bude v buttonu
-- action - funkce co se zavola po kliknuti
-- color - barva pozadi (hex)
-- fontcolor - barva fontu (hex)
-- hover - barva pri hoveru (hex)

local Textfont = love.graphics.newFont("fonts/bebasneueregular.ttf", 60)

local TextButton = {}

	local width = 0
	local height = 0
	
	local offx = 0
	local offy = 0
	local but_action

	function TextButton.new(x,y,text,color,hover,action)
		
		
		love.graphics.setFont(Textfont)
		
		width = Textfont:getWidth(text)
		height = Textfont:getHeight()
		
		offx = x
		offy = y
		but_action = action
		
		
		if color == nil then 
			color = "000000"
		end
		
		local newx, newy = love.mouse.getPosition()
		local leftIsDown = love.mouse.isDown(1)
		
		   if newx  >= offx and newx <= offx + width and newy >= offy and newy <= offy + height then
		   		
		   
				color = hover
				TextButton.draw(x,y,text,color)
			
			else TextButton.draw(x,y,text,color)
						
		  end
		 
			
	
	end
	
	function TextButton.update()
	
	
	end
	
	function hex(hex)
	
	
		local redColor,greenColor,blueColor=hex:match('(..)(..)(..)')
		redColor, greenColor, blueColor = tonumber(redColor, 16)/255, tonumber(greenColor, 16)/255, tonumber(blueColor, 16)/255
		redColor, greenColor, blueColor = math.floor(redColor*100)/100, math.floor(greenColor*100)/100, math.floor(blueColor*100)/100
		
		return redColor, greenColor, blueColor
	
	
	end
	
	function TextButton.IsHover(x,y,text)
	
	
		width = Textfont:getWidth(text)
		height = Textfont:getHeight()
		
		offx = x
		offy = y
	
		local newx, newy = love.mouse.getPosition()
		local leftIsDown = love.mouse.isDown(1)
		
		 if newx  >= offx and newx <= offx + width and newy >= offy and newy <= offy + height then
			return true
			
			else return false
		 end
	
	end
	
	function TextButton.draw(x,y,text,color)
	
	
	
	
		love.graphics.setColor(hex(color))	
		love.graphics.print(text,x,y)
	
	end
	
	
	function TextButton.action()
	
		return but_action() or nil
	
	end

return TextButton