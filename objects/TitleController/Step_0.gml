/// @desc description

keyAction = keyboard_check_pressed(ord("E"));
keyEscape = keyboard_check_pressed(vk_escape);
keyDev = keyboard_check_pressed(vk_f1);
keyUp = keyboard_check_pressed(ord("W"));
keyDown = keyboard_check_pressed(ord("S"));

// TITLE CONTROLS
if(at_title) {
	if(keyAction){
		keyAction = false;
		at_title = false;
		in_menu = true;
	}
	if(keyEscape) game_end();
}

// MENU CONTROLS
if(in_menu){
	if(keyDev){
		keyDev = false;
		in_menu = false;
		in_dev = true;
	}
	if(keyEscape){
		keyEscape = false;
		in_menu = false;
		at_title = true;
	}
	if(keyUp)		sel_menu = max(0, --sel_menu);
	if(keyDown)		sel_menu = min(menu_length - 1, ++sel_menu);
	if(keyAction){
		switch(sel_menu){
			case 0: // Continue
				// TBD
				break;
			case 1: // New Game
				// TBD
				break;
			case 2: // Load Game
				// TBD
				break;
			case 3: // Settings
				// TBD
				break;
			case 4: // Quit
				game_end();
				break;
			default: break;
		}
	}
}

// DEV MENU CONTROLS
if(in_dev){
	if(keyEscape){
		keyEscape = false;
		in_dev = false;
		in_menu = true;
	}
	if(keyUp)		sel_dev = max(0, --sel_dev);
	if(keyDown)		sel_dev = min(dev_length - 1, ++sel_dev);
	if(keyAction){
		room_goto(menu_options_dev[sel_dev][1]);	
	}
}