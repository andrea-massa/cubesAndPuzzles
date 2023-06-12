/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 076D8CD0
draw_self();

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3123D9BC
/// @DnDArgument : "expr" "instance_exists(obj_grav_gun_pickup)"
if(instance_exists(obj_grav_gun_pickup))
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 7BC8C834
	/// @DnDInput : 9
	/// @DnDParent : 3123D9BC
	/// @DnDArgument : "function" "draw_sprite_ext"
	/// @DnDArgument : "arg" "spr_pedestal_light"
	/// @DnDArgument : "arg_1" "0"
	/// @DnDArgument : "arg_2" "x"
	/// @DnDArgument : "arg_3" "y"
	/// @DnDArgument : "arg_4" "1"
	/// @DnDArgument : "arg_5" "1"
	/// @DnDArgument : "arg_6" "0"
	/// @DnDArgument : "arg_7" "c_white"
	/// @DnDArgument : "arg_8" "dim"
	draw_sprite_ext(spr_pedestal_light, 0, x, y, 1, 1, 0, c_white, dim);
}