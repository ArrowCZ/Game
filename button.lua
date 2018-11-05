
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

font = love.graphics.newFont("fonts/bebasneueregular.ttf", 30)

local Button = {}

	local width = 0
	local height = 0
	
	local offx = 0
	local offy = 0
	
	local but_action

	function Button.new(x,y,w,h,text,color,fontcolor,hover,action)
		
		width = w;
		height = h;
		
		offx = x
		offy = y
		but_action = action
		
		
		if color == nil then
			color = "ffffff"
		end
		if fontcolor == nil then 
			fontcolor = "000000"
		end
		
		local newx, newy = love.mouse.getPosition()
	
	
		   if newx >= offx and newx <= offx + width and newy >= offy and newy <= offy + height then
				color = hover
				Button.draw(x,y,w,h,text,color,fontcolor)
			
			else Button.draw(x,y,w,h,text,color,fontcolor)
			
			
		  end
			
	
	end
	
	function Button.update()
	
	
	end
	
	function hex(hex)
	
	
		local redColor,greenColor,blueColor=hex:match('(..)(..)(..)')
		redColor, greenColor, blueColor = tonumber(redColor, 16)/255, tonumber(greenColor, 16)/255, tonumber(blueColor, 16)/255
		redColor, greenColor, blueColor = math.floor(redColor*100)/100, math.floor(greenColor*100)/100, math.floor(blueColor*100)/100
		
		return redColor, greenColor, blueColor
	
	
	end
	
	function Button.draw(x,y,w,h,text,color,fontcolor)
	
	
	
	
		love.graphics.setColor(hex(color))	
		
		love.graphics.rectangle("fill", x, y, w, h )
		 love.graphics.setFont(font)
		love.graphics.setColor(hex(fontcolor))	
		love.graphics.printf(text,x, y + h/2 - font:getHeight() / 2 , w,"center")
	
	end
	
		function Button.mousepressed( x, y, button)
		
			if button == 1 then
		
				if x >= offx and x <= offx + width and y >= offy and y <= offy + height then
				
					--print("succes")
					Button.action()
				
				end
			end
		
		end
		
		
		
		

	
	
	function Button.action()
	
		return but_action() or nil
	
	end

return Button