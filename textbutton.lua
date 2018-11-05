
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
	
	local index = 1
	local buttons = {}

	function TextButton.new(x,y,text,color,hover,action,name)
		
		
		love.graphics.setFont(Textfont)
		
		buttons[index] = {}
		
		buttons[index][1] = Textfont:getWidth(text)
		buttons[index][2] = Textfont:getHeight()
		buttons[index][3] = x
		buttons[index][4] = y
		buttons[index][5] = action
		buttons[index][6] = name
		
		
		if color == nil then 
			color = "000000"
		end
		
		local newx, newy = love.mouse.getPosition()
		
		  if newx >= buttons[index][3] and newx <= buttons[index][3] + buttons[index][1] and newy >= buttons[index][4] and newy <= buttons[index][4] + buttons[index][2] then

				color = hover
				TextButton.draw(x,y,text,color)
			
			else TextButton.draw(x,y,text,color)
						
		  end
		 
		checkindex(name)	
	
	end
	
	function TextButton.update()
	
	
	end
	
	
	function checkindex(name)
	
		local buttoncheck = true
	
		for i = 1, (index - 1) do
		
			if buttons[i][6] == name then
				buttoncheck = false
			end
			
		end
		
		if buttoncheck then
			index = index + 1
		end 
	
	end
	
	function hex(hex)
	
	
		local redColor,greenColor,blueColor=hex:match('(..)(..)(..)')
		redColor, greenColor, blueColor = tonumber(redColor, 16)/255, tonumber(greenColor, 16)/255, tonumber(blueColor, 16)/255
		redColor, greenColor, blueColor = math.floor(redColor*100)/100, math.floor(greenColor*100)/100, math.floor(blueColor*100)/100
		
		return redColor, greenColor, blueColor
	
	
	end
	

	function TextButton.draw(x,y,text,color)
	
		love.graphics.setColor(hex(color))	
		love.graphics.print(text,x,y)
	
	end
	
	function love.mousepressed( x, y, button)
			
			for i = 1, (index-1) do
			if x >= buttons[i][3] and x <= buttons[i][3] + buttons[i][1] and y >= buttons[i][4] and y <= buttons[i][4] + buttons[i][2] then
			
				--print(index)
				TextButton.action(i)
			end
			end
		
	end
	
	function TextButton.action(i)
		--print(index)
		return buttons[i][5]() or nil
	
	end

return TextButton