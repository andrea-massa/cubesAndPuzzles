/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 61D39F01
/// @DnDArgument : "expr" "file_exists(global.save_slot)"
if(file_exists(global.save_slot))
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 5A830FED
	/// @DnDParent : 61D39F01
	/// @DnDArgument : "function" "Load_game"
	/// @DnDArgument : "arg" "obj_player"
	Load_game(obj_player);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 6249DA5C
	/// @DnDParent : 61D39F01
	/// @DnDArgument : "font" "CPFont"
	/// @DnDSaveInfo : "font" "CPFont"
	draw_set_font(CPFont);
}