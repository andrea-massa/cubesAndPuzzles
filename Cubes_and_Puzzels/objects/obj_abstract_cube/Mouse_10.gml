/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 633D1C8F
/// @DnDArgument : "expr" "distance_to_object(obj_grav_gun) <= 256"
if(distance_to_object(obj_grav_gun) <= 256)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6102DE94
	/// @DnDParent : 633D1C8F
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "isHover"
	isHover = true;
}