/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 2A04EB90
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 26003ED6
/// @DnDArgument : "font" "SaveFont"
/// @DnDSaveInfo : "font" "SaveFont"
draw_set_font(SaveFont);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 537C8282
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "2"
/// @DnDArgument : "yscale" "2"
/// @DnDArgument : "caption" ""Save: ""
/// @DnDArgument : "text" "string(slot)"
draw_text_transformed(x + 0, y + 0, string("Save: ") + string(string(slot)), 2, 2, 0);

/// @DnDAction : YoYo Games.Files.If_File_Exists
/// @DnDVersion : 1
/// @DnDHash : 188E649D
/// @DnDArgument : "file" "this_slot"
var l188E649D_0 = file_exists(this_slot);
if(l188E649D_0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 5722A034
	/// @DnDParent : 188E649D
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "128"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "2"
	/// @DnDArgument : "yscale" "2"
	/// @DnDArgument : "caption" ""Chamber: ""
	/// @DnDArgument : "text" "string(room_name)"
	draw_text_transformed(x + 0, y + 128, string("Chamber: ") + string(string(room_name)), 2, 2, 0);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3AFF3754
else
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 1AD45719
	/// @DnDParent : 3AFF3754
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "128"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "2"
	/// @DnDArgument : "yscale" "2"
	/// @DnDArgument : "caption" ""Empty""
	draw_text_transformed(x + 0, y + 128, string("Empty") + "", 2, 2, 0);
}