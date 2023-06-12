/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2886620A
/// @DnDArgument : "expr" "swap"
if(swap)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 382FCEE9
	/// @DnDParent : 2886620A
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "swap"
	swap = false;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3C089298
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1D2F1E29
	/// @DnDParent : 3C089298
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "swap"
	swap = true;
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 673F3E66
/// @DnDArgument : "steps" "1 * room_speed"
alarm_set(0, 1 * room_speed);