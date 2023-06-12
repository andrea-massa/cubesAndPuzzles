/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0016373D
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDInput : 2
/// @DnDArgument : "funcName" "Save_game"
/// @DnDArgument : "arg" "curr_room"
/// @DnDArgument : "arg_1" "player"
function Save_game(curr_room, player) 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 12816589
	/// @DnDParent : 0016373D
	/// @DnDArgument : "code" "if (file_exists(global.save_slot)) {$(13_10)	file_delete(global.save_slot)$(13_10)}$(13_10)ini_open(global.save_slot)$(13_10)$(13_10)//save current room$(13_10)ini_write_real("Room", "RoomID", room)$(13_10)$(13_10)ini_close()"
	if (file_exists(global.save_slot)) {
		file_delete(global.save_slot)
	}
	ini_open(global.save_slot)
	
	//save current room
	ini_write_real("Room", "RoomID", room)
	
	ini_close()
}