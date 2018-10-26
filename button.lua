
--Vykresli Button. Parametry:
-- X - X hodnota pozice
-- Y - Y hodnota pozice
-- W - sirka buttonu
-- H - vyska
-- text - text co bude v buttonu
-- action - funkce co se zavola po kliknuti
-- color - barva pozadi
-- hover - barva pri mouse hoveru
-- fontcolor - barva fontu
-- name - button name (unikatni pro kazdy button

font = love.graphics.newFont("fonts/bebasneueregular.ttf", 30)

local Button = {}

	local index = 1
	local buttons = {}


	
	function Button.newOpaque(x,y,w,h,text,color,fontcolor,hover,action,name)
		
		buttons[index] = {}
		
		buttons[index][1] = w
		buttons[index][2] = h
		buttons[index][3] = x
		buttons[index][4] = y
		buttons[index][5] = action
		buttons[index][6] = name
		
		
		if color == nil then
			color = "ffffff"
		end
		if fontcolor == nil then 
			fontcolor = "000000"
		end
		
		local newx, newy = love.mouse.getPosition()
	
	
			if newx >= buttons[index][3] and newx <= buttons[index][3] + buttons[index][1] and newy >= buttons[index][4] and newy <= buttons[index][4] + buttons[index][2] then
				color = hover
				Button.drawOpaque(x,y,w,h,text,color,fontcolor)
			
			else Button.drawOpaque(x,y,w,h,text,color,fontcolor)
			
			end
		
		checkindex(name)
	
	end
	
	function Button.newClear(x,y,w,h,text,fontcolor,action,name)
		
		buttons[index] = {}
		
		buttons[index][1] = w
		buttons[index][2] = h
		buttons[index][3] = x
		buttons[index][4] = y
		buttons[index][5] = action
		buttons[index][6] = name
		
		if fontcolor == nil then 
			fontcolor = "000000"
		end
	
		Button.drawClear(x,y,w,h,text,fontcolor)

		checkindex(name)
		
	end
	
	function Button.update()
	
	
	end
	
	function hex(hex)
	
	
		local redColor,greenColor,blueColor=hex:match('(..)(..)(..)')
		redColor, greenColor, blueColor = tonumber(redColor, 16)/255, tonumber(greenColor, 16)/255, tonumber(blueColor, 16)/255
		redColor, greenColor, blueColor = math.floor(redColor*100)/100, math.floor(greenColor*100)/100, math.floor(blueColor*100)/100
		
		return redColor, greenColor, blueColor
	
	
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
	
	function Button.drawOpaque(x,y,w,h,text,color,fontcolor)
	
	
	
	
		love.graphics.setColor(hex(color))	
		
		love.graphics.rectangle("fill", x, y, w, h )
		 love.graphics.setFont(font)
		love.graphics.setColor(hex(fontcolor))	
		love.graphics.printf(text,x, y + h/2 - font:getHeight() / 2 , w,"center")
	
	end
	
	function Button.drawClear(x,y,w,h,text,fontcolor)
	
	
		love.graphics.setFont(font)
		love.graphics.setColor(hex(fontcolor))	
		love.graphics.printf(text,x, y + h/2 - font:getHeight() / 2 , w,"center")
	
	end
	
		function love.mousepressed( x, y, button)
			
			for i = 1, (index-1) do
			if x >= buttons[i][3] and x <= buttons[i][3] + buttons[i][1] and y >= buttons[i][4] and y <= buttons[i][4] + buttons[i][2] then
			
				--print(index)
				Button.action(i)
			end
			end
		
		end
	
	
	function Button.action(i)
		--print(buttons[i][6])
		return buttons[i][5]() or nil
	
	end

return Button