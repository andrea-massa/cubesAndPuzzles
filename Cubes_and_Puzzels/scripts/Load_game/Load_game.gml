/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 187901C7
/// @DnDArgument : "funcName" "Load_game"
/// @DnDArgument : "arg" "obj_message"
function Load_game(obj_message) 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 420CDB84
	/// @DnDParent : 187901C7
	/// @DnDArgument : "code" "if (file_exists(global.save_slot)) {$(13_10)	ini_open(global.save_slot)$(13_10)	$(13_10)	//load room saved in section Room under variable RoomID$(13_10)	room_to_load = ini_read_real("Room", "RoomID", 0)$(13_10)$(13_10)	room_goto(room_to_load)$(13_10)	$(13_10)	ini_close()$(13_10)} else {$(13_10)	// if the save file doen't exsit throw error message$(13_10)	error = instance_create_layer(0,0,"dialog", obj_message)$(13_10)}$(13_10)"
	if (file_exists(global.save_slot)) {
		ini_open(global.save_slot)
		
		//load room saved in section Room under variable RoomID
		room_to_load = ini_read_real("Room", "RoomID", 0)
	
		room_goto(room_to_load)
		
		ini_close()
	} else {
		// if the save file doen't exsit throw error message
		error = instance_create_layer(0,0,"dialog", obj_message)
	}
}