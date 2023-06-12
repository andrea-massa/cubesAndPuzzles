/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 055B1138
/// @DnDArgument : "expr" "selected"
/// @DnDArgument : "not" "1"
if(!(selected))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 20744280
	/// @DnDParent : 055B1138
	/// @DnDArgument : "expr" "spr_save_slot"
	/// @DnDArgument : "var" "sprite_index"
	sprite_index = spr_save_slot;
}