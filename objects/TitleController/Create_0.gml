/// @desc description

randomize();
next_room = rmDev01;
at_title = true;
in_menu = false;
in_dev = false;
sel_menu = 0;
sel_dev = 0;

menu_options = [
	"Continue",
	"New Game",
	"Load Game",
	"Settings",
	"Quit"
]
menu_length = array_length(menu_options);

menu_options_dev = [
	["Dev Room 1", rmDev01],
	["Dev Room 2", rmDev01]
]
dev_length = array_length(menu_options_dev);