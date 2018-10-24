-- Configuration file


function love.conf(t)
    t.window.width = 1280
    t.window.height = 720
	 t.console = true --debug console
	 t.window.title = "Game"

	 t.window.icon = nil --Ikona ke hre
	  t.window.resizable = false          -- Let the window be user-resizable (boolean)
    t.window.minwidth = 1280               -- Minimum window width if the window is resizable (number)
    t.window.minheight = 720
	t.window.fullscreen = false
	t.window.fullscreentype = "desktop"	
	
	
	t.window.vsync = 0                  -- Vertical sync mode (number)
    t.window.msaa = 0                   -- The number of samples to use with multi-sampled antialiasing (number)
    t.window.depth = nil                -- The number of bits per sample in the depth buffer
    t.window.stencil = nil              -- The number of bits per sample in the stencil buffer
    t.window.display = 1                -- Index of the monitor to show the window in (number)
    t.window.highdpi = false            -- Enable high-dpi mode for the window on a Retina display (boolean)
    t.window.x = nil                    -- The x-coordinate of the window's position in the specified display (number)
    t.window.y = nil      
	
	 
end