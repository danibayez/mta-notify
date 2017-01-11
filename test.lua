local texts = {
	"Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
	"Lorem ipsum dolor sit amet.",
	"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed egestas leo, nec pharetra mi."
}

local fonts = {
	"default",
	"default-bold",
	"arial",
	"clear"
}

addCommandHandler("testnotify",
	function()
		Notify(
			{
				text = texts[math.random(1, #texts)],
				font = fonts[math.random(1, #fonts)],
				fontColor = tocolor(255, 255, 255, 255),
				fontSize = 1.3,
				height = math.random(25, 60),
				color = tocolor(math.random(0, 255), math.random(0, 255), math.random(0, 255), math.random(150, 255)),
				radius = math.random(0, 50)
			}
		)
	end
)