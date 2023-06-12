/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 69B9A29B
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDInput : 4
/// @DnDArgument : "funcName" "set_rotation"
/// @DnDArgument : "arg" "x1"
/// @DnDArgument : "arg_1" "y1"
/// @DnDArgument : "arg_2" "x2"
/// @DnDArgument : "arg_3" "y2"
function set_rotation(x1, y1, x2, y2) 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 246373F3
	/// @DnDParent : 69B9A29B
	/// @DnDArgument : "code" "//rotate object to point to another$(13_10)return -point_direction(x1,y1,x2,y2)$(13_10)"
	//rotate object to point to another
	return -point_direction(x1,y1,x2,y2)
}