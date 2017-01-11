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
				fontSize = 1,
				height = 25,
				color = tocolor(255, 0, 80, 255),
				radius = 5,
			}
		)
	end
)