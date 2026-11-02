local recipe_list
local modname

recipe_list = {
	{ "black", "black" },
	{ "blue", "blue" },
	{ "cyan", "cyan" },
	{ "green", "green" },
	{ "magenta", "magenta" },
	{ "orange", "orange" },
	{ "purple", "violet" },
	{ "red", "red" },
	{ "yellow", "yellow" },
	{ "white", "white" },
}
modname = "dye"

for i in ipairs(recipe_list) do
	local colour = recipe_list[i][1]
	local ingredient = recipe_list[i][2]

	core.register_craft({
		output = "abritorch:torch_" .. colour .. " 4",
		recipe = {
			{ "default:torch", "", "default:torch" },
			{ "", modname .. ":" .. ingredient, "" },
			{ "default:torch", "", "default:torch" },
		},
	})
end
