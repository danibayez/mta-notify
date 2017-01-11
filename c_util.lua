function round(num) 
    if num >= 0 then return math.floor(num+.5) 
    else return math.ceil(num-.5) end
end

function dxDrawCorner(x, y, r, color, corner, postGUI)
	corner = corner or 1
	local start = corner % 2 == 0 and 0 or -r
	local stop = corner % 2 == 0 and r or 0
	local m = corner > 2 and -1 or 1
	local h = (corner == 1 or corner == 3) and -1 or 1
 	for yoff = start, stop do
 		local xoff = math.sqrt(r*r-yoff*yoff) * m
 		dxDrawRectangle(x-xoff, y+yoff, xoff, h, color, postGUI)
	end 
end

function _dxDrawRectangle(posX, posY, width, height, radius, color, postGUI)	
	posX = round(posX)
	posY = round(posY)
	width = round(width)
	height = round(height)
	radius = radius and math.min(radius, math.min(width, height) / 2) or 12
	
	dxDrawRectangle(posX, posY + radius, width, height - radius * 2, color, postGUI)
	dxDrawRectangle(posX + radius, posY, width - 2 * radius, radius, color, postGUI)
	dxDrawRectangle(posX + radius, posY + height - radius, width - 2 * radius, radius, color, postGUI)
	
	dxDrawCorner(posX + radius, posY + radius, radius, color, 1, postGUI)
	dxDrawCorner(posX + radius, posY + height - radius, radius, color, 2, postGUI)
	dxDrawCorner(posX + width - radius, posY + radius, radius, color, 3, postGUI)
	dxDrawCorner(posX + width - radius, posY + height - radius, radius, color, 4, postGUI)
end