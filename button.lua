local Button = {}


	function Button.load()
	
		
	
	end
	
	function Button.update(dt)
	
		
	
	end
	
	function Button.draw(x,y,w,h,text)
	
		love.graphics.setColor(1,1,1)	
		love.graphics.rectangle("fill", x, y, w, h )
		love.graphics.setColor(0,0,0)	
		love.graphics.print( text, x , y)
	
	end


return Button