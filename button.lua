local Button = {}

	local width = 0
	local height = 0
	
	local offx = 0
	local offy = 0

	function Button.new(x,y,w,h,text)
		
		Button.draw(x,y,w,h,text)
		width = w;
		height = y;
		
		offx = x
		offy = y
		
	
	end
	
	function Button.update(dt)
	
	end
	
	function Button.draw(x,y,w,h,text) --Draws the button. X - the x offset, Y - the y offset, w,h, text - text to appear
	
		love.graphics.setColor(1,1,1)	
		love.graphics.rectangle("fill", x, y, w, h )
		love.graphics.setColor(0,0,0)	
		love.graphics.printf(text,x, y, w,"center")
	
	end
	
		function love.mousepressed( x, y, button)
		
			if x >= offx and x <= offx + width and y >= offy and y <= offy + height then
			
				print("succes")
			
			end
		
		end
	


return Button