///@func build_inputs()
///@desc Initialize Input Global Variables
function build_inputs(){
	globalvar Input_UpHold;		globalvar Input_UpPress;		globalvar Input_UpRelease;
	globalvar Input_DownHold;	globalvar Input_DownPress;		globalvar Input_DownRelease;
	globalvar Input_LeftHold;	globalvar Input_LeftPress;		globalvar Input_LeftRelease;
	globalvar Input_RightHold;	globalvar Input_RightPress;		globalvar Input_RightRelease;
	globalvar Input_ActionHold;	globalvar Input_ActionPress;	globalvar Input_ActionRelease;
	globalvar Input_CancelHold;	globalvar Input_CancelPress;	globalvar Input_CancelRelease;
	globalvar Input_PauseHold;	globalvar Input_PausePress;		globalvar Input_PauseRelease;
	
	globalvar GamepadSlots; GamepadSlots = [0, 0, 0, 0]; // To be used in multi-controller configs
}

///@func assign_gamepad_slots()
///
///@desc | Listens for gamepad input at Title Screen or mid-game
///		 | Assigns slot from detected input to players [1-4]
function assign_gamepad_slots(){
		
}

///@func get_inputs()
///@desc Update Global Input Variables with Input States
function get_inputs(){
	Input_UpHold =			keyboard_check(ord("W")) || gamepad_button_check(0, gp_padu);
	Input_DownHold =		keyboard_check(ord("S")) || gamepad_button_check(0, gp_padd);
	Input_LeftHold =		keyboard_check(ord("A")) || gamepad_button_check(0, gp_padl);
	Input_RightHold =		keyboard_check(ord("D")) || gamepad_button_check(0, gp_padr);
	Input_ActionHold =		keyboard_check(ord("E")) || gamepad_button_check(0, gp_face2);
	Input_CancelHold =		keyboard_check(ord("Q")) || gamepad_button_check(0, gp_face1);
	Input_PauseHold =		keyboard_check(vk_escape) || gamepad_button_check(0, gp_padu);
	Input_UpPress =			keyboard_check_pressed(ord("W")) || gamepad_button_check_pressed(0, gp_padu);
	Input_DownPress =		keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(0, gp_padu);
	Input_LeftPress =		keyboard_check_pressed(ord("A")) || gamepad_button_check_pressed(0, gp_padu);
	Input_RightPress =		keyboard_check_pressed(ord("D")) || gamepad_button_check_pressed(0, gp_padu);
	Input_ActionPress =		keyboard_check_pressed(ord("E")) || gamepad_button_check_pressed(0, gp_padu);
	Input_CancelPress =		keyboard_check_pressed(ord("Q")) || gamepad_button_check_pressed(0, gp_padu);
	Input_PausePress =		keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(0, gp_padu);
	Input_UpRelease =		keyboard_check_released(ord("W")) || gamepad_button_check_released(0, gp_padu);
	Input_DownRelease =		keyboard_check_released(ord("S")) || gamepad_button_check_released(0, gp_padu);
	Input_LeftRelease =		keyboard_check_released(ord("A")) || gamepad_button_check_released(0, gp_padu);
	Input_RightRelease =	keyboard_check_released(ord("D")) || gamepad_button_check_released(0, gp_padu);
	Input_ActionRelease =	keyboard_check_released(ord("E")) || gamepad_button_check_released(0, gp_padu);
	Input_CancelRelease =	keyboard_check_released(ord("Q")) || gamepad_button_check_released(0, gp_padu);
	Input_PauseRelease =	keyboard_check_released(vk_escape) || gamepad_button_check_released(0, gp_padu);
}