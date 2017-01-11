# mta-notify
Basic and personalizable notifications for MTA:SA

# HOW TO USE ON EXTERNAL RESOURCES
exports.notify:Notify()

# EXAMPLE
exports.notify:Notify(
			{
				text = texts[math.random(1, #texts)],
				font = "arial",
				fontColor = tocolor(255, 255, 255, 255),
				fontSize = 1.5,
				height = 45,
				color = tocolor(255, 0, 80),
				radius = 5,
			}
		)

