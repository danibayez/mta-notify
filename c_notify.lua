local notify = {}
local screenX, screenY = guiGetScreenSize()

addEventHandler("onClientRender", root,
	function()
		local cacheY = 10
		for i = 1, #notify do
			local v = notify[i]
			if v then
				local width, height = dxGetTextWidth(v[1].text, v[1].fontSize or 1, v[1].font or "default") + 15, v[1].height or 45
				if v[3] == "appear" then 
					v[2] = v[2] < 1 and v[2] + 0.15 or 1
				elseif v[3] == "dissapear" then 
					if v[2] > 0 then
						v[2] = v[2] - 0.15
					else
						table.remove(notify, i)
					end
				end
				local posX, posY = interpolateBetween(screenX, cacheY-height, 0, (screenX - width)-5, cacheY, 0, v[2], "Linear")
				_dxDrawRectangle(posX, posY, width, height, v[1].radius or 0, v[1].color, true)
				dxDrawText(v[1].text, posX, posY, posX+width, posY+height, v[1].fontColor or tocolor(255, 255, 255, 255), v[1].fontSize or 1, v[1].font or "default", "center", "center", false, false, true)
				cacheY = (cacheY + height) + 5
			end
		end
		if #notify ~= 0 and (getTickCount() - tick) > 1000 then notify[1][3] = "dissapear" tick = getTickCount() end
	end
)

function Notify(_table)
	table.insert(notify, {_table, 0, "appear"})
	tick = getTickCount()
end