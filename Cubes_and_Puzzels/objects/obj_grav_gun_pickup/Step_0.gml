/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 053E497E
/// @DnDArgument : "expr" "swap"
if(swap)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 782849A6
	/// @DnDParent : 053E497E
	/// @DnDArgument : "expr" "-.3"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "phy_position_y"
	phy_position_y += -.3;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 69D506E8
/// @DnDArgument : "expr" "swap"
/// @DnDArgument : "not" "1"
if(!(swap))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 65B3ADC2
	/// @DnDParent : 69D506E8
	/// @DnDArgument : "expr" ".3"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "phy_position_y"
	phy_position_y += .3;
}